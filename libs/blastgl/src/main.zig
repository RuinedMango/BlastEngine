const std = @import("std");
const xml = @import("xml.zig");

const vendors: [36][]const u8 = .{
    "3DFX",
    "AMD",
    "ANDROID",
    "ANGLE",
    "APPLE",
    "ARB",
    "ARM",
    "ATI",
    "DMP",
    "EXT",
    "FJ",
    "GREMEDY",
    "HP",
    "IBM",
    "IMG",
    "INGR",
    "INTEL",
    "KHR",
    "MESA",
    "MESAX",
    "NV",
    "NVX",
    "OES",
    "OML",
    "OVR",
    "PGI",
    "QCOM",
    "REND",
    "S3",
    "SGI",
    "SGIS",
    "SGIX",
    "SUN",
    "SUNX",
    "VIV",
    "WIN",
};

pub fn main() !void {
    const file = try std.fs.cwd().createFile("gl.zig", .{ .read = true });
    defer file.close();
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const allocator = arena.allocator();
    const glxml: []const u8 = try std.fs.cwd().readFileAlloc(allocator, "gl.xml", 500000000);
    const doc: xml.Document = xml.parse(allocator, glxml) catch |err| switch (err) {
        error.InvalidDocument,
        error.UnexpectedEof,
        error.UnexpectedCharacter,
        error.IllegalCharacter,
        error.InvalidEntity,
        error.InvalidName,
        error.InvalidStandaloneValue,
        error.NonMatchingClosingTag,
        error.UnclosedComment,
        error.UnclosedValue,
        => return error.InvalidXml,
        error.OutOfMemory => return error.OutOfMemory,
    };
    printTypes(doc.root);
    printConstants(doc.root);
    printFunctions(doc.root);
}
fn printTypes(stuff: *xml.Element) void {
    _ = stuff;
}

fn printConstants(root: *xml.Element) void {
    var constantGroups = root.findChildrenByTag("enums");
    while (constantGroups.next()) |group| {
        var constants = group.findChildrenByTag("enum");
        while (constants.next()) |constant| {
            if (checkVendor(constant.getAttribute("name").?)) {
                std.debug.print("pub const {s}: comptime_int = {s};\n", .{ constant.getAttribute("name").?[3..], constant.getAttribute("value").? });
            }
        }
    }
}

fn printFunctions(root: *xml.Element) void {
    var commandsGroup = root.findChildByTag("commands");
    var commands = commandsGroup.?.findChildrenByTag("command");
    while (commands.next()) |command| {
        if (checkVendor(command.findChildByTag("proto").?.getCharData("name").?)) {
            std.debug.print("pub fn {s}(", .{command.findChildByTag("proto").?.getCharData("name").?[2..]});
            var params = command.findChildrenByTag("param");
            var paramCount: i32 = 0;
            var lastParam = false;
            while (params.next()) |param| {
                if (paramCount > 0 and !lastParam) {
                    std.debug.print(", ", .{});
                }
                std.debug.print("{s}:", .{param.getCharData("name").?});
                if (param.findChildByTag("ptype") != null) {
                    std.debug.print(" {s}", .{param.getCharData("ptype").?});
                } else {
                    std.debug.print(" ?*const anyopaque", .{});
                }
                paramCount += 1;
            } else {
                lastParam = true;
                std.debug.print(")", .{});
            }
            paramCount = 0;
            lastParam = false;
            if (command.findChildByTag("proto").?.findChildByTag("ptype") != null) {
                std.debug.print(" {s} {{", .{command.findChildByTag("proto").?.getCharData("ptype").?});
            } else {
                std.debug.print(" void {{\n", .{});
            }
            std.debug.print("   return function_table.current.?.{s}(", .{command.findChildByTag("proto").?.getCharData("name").?[2..]});
            params = command.findChildrenByTag("param");
            while (params.next()) |param| {
                if (paramCount > 0 and !lastParam) {
                    std.debug.print(", ", .{});
                }
                std.debug.print("{s}", .{param.getCharData("name").?});
                paramCount += 1;
            } else {
                lastParam = true;
                std.debug.print(");\n", .{});
            }
            std.debug.print("}}\n", .{});
        }
    }
}

fn checkVendor(subject: []const u8) bool {
    var final = true;
    for (vendors) |vendor| {
        if (std.mem.containsAtLeast(u8, subject, 1, vendor)) {
            final = false;
        }
    }
    return final;
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
