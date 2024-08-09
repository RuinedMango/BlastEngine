const std = @import("std");
const xml = @import("xml.zig");

const api = "gl";
const version = "4.6";
const profile = "core";

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
    try parseFeatures(doc.root, file, allocator);
}

pub fn parseFeatures(root: *xml.Element, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var features = root.findChildrenByTag("feature");
    while (features.next()) |feature| {
        if (std.mem.eql(u8, feature.getAttribute("api").?, api)) {
            if (try std.fmt.parseFloat(f16, feature.getAttribute("number").?) <= try std.fmt.parseFloat(f16, version)) {
                try parseRequire(feature, file, alloc);
                try parseRemove(feature, file, alloc);
            }
        }
    }
}

pub fn parseRequire(feature: *xml.Element, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var requires = feature.findChildrenByTag("require");
    while (requires.next()) |require| {
        if (require.getAttribute("profile") != null) {
            if (std.mem.eql(u8, require.getAttribute("profile").?, profile)) {
                try parseRequireEnums(require, file, alloc);
                try parseRequireCommands(require, file, alloc);
            }
        }
    }
}

pub fn parseRemove(feature: *xml.Element, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var removes = feature.findChildrenByTag("remove");
    while (removes.next()) |remove| {
        if (remove.getAttribute("profile") != null) {
            if (std.mem.eql(u8, remove.getAttribute("profile").?, profile)) {
                try parseRemoveEnums(remove, file, alloc);
                try parseRemoveCommands(remove, file, alloc);
            }
        }
    }
}

pub fn parseRequireEnums(require: *xml.Element, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var enums = require.findChildrenByTag("enum");
    while (enums.next()) |constant| {
        std.debug.print("{s}", .{constant.getAttribute("name").?});
        _ = try file.write(try concat(alloc, constant.getAttribute("name").?, "\n"));
    }
}

pub fn parseRequireCommands(require: *xml.Element, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var commands = require.findChildrenByTag("command");
    while (commands.next()) |function| {
        _ = try file.write(try concat(alloc, function.getAttribute("name").?, "\n"));
    }
}

pub fn parseRemoveEnums(remove: *xml.Element, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var enums = remove.findChildrenByTag("enum");
    while (enums.next()) |constant| {
        var i: i9 = 0;
        while (std.mem.eql(u8, @ptrCast(try file.reader().readUntilDelimiterOrEofAlloc(alloc, '\n', 500)), constant.getAttribute("name").?)) {
            i += 1;
        }
    }
}

pub fn parseRemoveCommands(remove: *xml.Element, file: std.fs.File, alloc: std.mem.Allocator) !void {
    var commands = remove.findChildrenByTag("command");
    while (commands.next()) |function| {
        var i: i9 = 0;
        while (std.mem.eql(u8, @ptrCast(try file.reader().readUntilDelimiterOrEofAlloc(alloc, '\n', 500)), function.getAttribute("name").?)) {
            i += 1;
        }
    }
}

fn concat(alloc: std.mem.Allocator, a: []const u8, b: []const u8) ![]u8 {
    const result = try std.fmt.allocPrint(alloc, "{s}{s}", .{ a, b });
    return result;
}
