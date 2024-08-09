const std = @import("std");
const xml = @import("xml.zig");

const api = "gl";
const version = "4.6";
const profile = "core";

var correctFeatures: []*xml.Element = undefined;
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
}

pub fn parseFeatures(root: *xml.Element, writer: std.io.AnyWriter) void{
    const features = root.findChildrenByTag("feature");
    while(features.next()) |feature|{
        if(feature.getAttribute("api").? == api){
        
        }
    }
}
