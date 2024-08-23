const std = @import("std");
const xml = @import("xml.zig");

const api = "gl";
const version = "4.6";
const profile = "core";

pub fn main() !void {
    const file = try std.fs.cwd().createFile("gl.zig", .{ .read = true });
    defer file.close();
    const tempFile = try std.fs.cwd().createFile("tempgl.zig", .{ .read = true });
    defer tempFile.close();
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
    try parseFeatures(doc.root, tempFile, file, allocator);
}

pub fn parseFeatures(root: *xml.Element, tempFile: std.fs.File, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var features = root.findChildrenByTag("feature");
    while (features.next()) |feature| {
        if (std.mem.eql(u8, feature.getAttribute("api").?, api)) {
            if (try std.fmt.parseFloat(f16, feature.getAttribute("number").?) <= try std.fmt.parseFloat(f16, version)) {
                try parseRequire(root, feature, tempFile);
                try parseRemove(root, feature, tempFile, file, alloc);
            }
        }
    }
}

pub fn parseRequire(root: *xml.Element, feature: *xml.Element, file: std.fs.File) !void {
    var requires = feature.findChildrenByTag("require");
    while (requires.next()) |require| {
        if (require.getAttribute("profile") != null) {
            if (std.mem.eql(u8, require.getAttribute("profile").?, profile)) {
                try parseRequireEnums(root, require, file);
                try parseRequireCommands(root, require, file);
            }
        } else {
            try parseRequireEnums(root, require, file);
            try parseRequireCommands(root, require, file);
        }
    }
}

pub fn parseRemove(root: *xml.Element, feature: *xml.Element, tempFile: std.fs.File, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var removes = feature.findChildrenByTag("remove");
    while (removes.next()) |remove| {
        if (remove.getAttribute("profile") != null) {
            if (std.mem.eql(u8, remove.getAttribute("profile").?, profile)) {
                try parseRemoveEnums(root, remove, tempFile, file, alloc);
                try parseRemoveCommands(root, remove, tempFile, file, alloc);
            }
        } else {
            try parseRemoveEnums(root, remove, tempFile, file, alloc);
            try parseRemoveCommands(root, remove, tempFile, file, alloc);
        }
    }
}

pub fn parseRequireEnums(root: *xml.Element, require: *xml.Element, file: std.fs.File) !void {
    var enums = require.findChildrenByTag("enum");
    while (enums.next()) |constant| {
        var enumContainer = root.findChildrenByTag("enums");
        while (enumContainer.next()) |container| {
            var values = container.findChildrenByTag("enum");
            while (values.next()) |value| {
                if (std.mem.eql(u8, value.getAttribute("name").?, constant.getAttribute("name").?)) {
                    _ = try file.writer().print("pub const {s}: comptime_int = {s};\n", .{ constant.getAttribute("name").?, value.getAttribute("value").? });
                }
            }
        }
    }
}

pub fn parseRequireCommands(root: *xml.Element, require: *xml.Element, file: std.fs.File) !void {
    var commands = require.findChildrenByTag("command");
    while (commands.next()) |function| {
        var commandContainer = root.findChildrenByTag("commands");
        while (commandContainer.next()) |container| {
            var values = container.findChildrenByTag("command");
            while (values.next()) |value| {
                if (std.mem.eql(u8, value.findChildByTag("proto").?.getCharData("name").?, function.getAttribute("name").?)) {
                    var i: u8 = 0;
                    var lastparam = false;
                    _ = try file.writer().print("pub fn {s}(", .{value.findChildByTag("proto").?.getCharData("name").?});
                    var params = value.findChildrenByTag("param");
                    while (params.next()) |param| {
                        if (i > 0 and !lastparam) {
                            _ = try file.writer().print(", ", .{});
                        }
                        _ = try file.writer().print("{s}: ", .{param.getCharData("name").?});
                        if (param.findChildByTag("ptype") != null) {
                            _ = try file.writer().print("{s}", .{param.getCharData("ptype").?});
                        } else {
                            _ = try file.writer().print("?*const anyopaque", .{});
                        }
                        i += 1;
                    } else {
                        lastparam = true;
                        if (value.findChildByTag("proto").?.findChildByTag("ptype") != null) {
                            _ = try file.writer().print(") {s}{{\n", .{value.findChildByTag("proto").?.getCharData("ptype").?});
                        } else {
                            _ = try file.writer().print(") void{{\n", .{});
                        }
                        _ = try file.writer().print("   return function_map.current.?.{s}(", .{function.getAttribute("name").?});
                        var params2 = value.findChildrenByTag("param");
                        var j: u8 = 0;
                        var lastParamName = false;
                        while (params2.next()) |param| {
                            if (j > 0 and !lastParamName) {
                                _ = try file.writer().print(", ", .{});
                            }
                            _ = try file.writer().print("{s}", .{param.getCharData("name").?});
                            j += 1;
                        } else {
                            lastParamName = true;
                            _ = try file.writer().print(");\n}}\n", .{});
                        }
                    }
                }
            }
        }
    }
}
var iast: u8 = 0;
pub fn parseRemoveEnums(root: *xml.Element, remove: *xml.Element, tempFile: std.fs.File, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var enums = remove.findChildrenByTag("enum");
    try tempFile.seekTo(0);
    const allFile = try tempFile.reader().readAllAlloc(alloc, (try tempFile.stat()).size);
    const all = try alloc.alloc(u8, (try tempFile.stat()).size);
    while (enums.next()) |constant| {
        var enumContainer = root.findChildrenByTag("enums");
        while (enumContainer.next()) |container| {
            var values = container.findChildrenByTag("enum");
            while (values.next()) |value| {
                if (std.mem.eql(u8, value.getAttribute("name").?, constant.getAttribute("name").?)) {
                    const variable = try std.fmt.allocPrint(alloc, "pub const {s}: comptime_int = {s};\n", .{ constant.getAttribute("name").?, value.getAttribute("value").? });
                    _ = std.mem.replace(u8, allFile, variable, "", all);
                }
            }
        }
    }
    //all = try alloc.realloc(all[100..], 8);
    if (!((iast % 2) == 0)) {
        std.debug.print("{s}", .{all[0..]});
        try file.writer().print("{s}", .{all[0..]});
    }
    iast += 1;
}

pub fn parseRemoveCommands(root: *xml.Element, remove: *xml.Element, tempFile: std.fs.File, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var commands = remove.findChildrenByTag("command");
    _ = file;
    _ = alloc;
    _ = tempFile;
    _ = root;
    while (commands.next()) |function| {
        _ = function;
    }
}

fn concat(alloc: std.mem.Allocator, a: []const u8, b: []const u8) ![]u8 {
    const result = try std.fmt.allocPrint(alloc, "{s}{s}", .{ a, b });
    return result;
}
