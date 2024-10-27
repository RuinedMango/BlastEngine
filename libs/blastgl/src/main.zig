const xml = @import("xml.zig");
const std = @import("std");

pub fn main() !void {
    var allocrena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer allocrena.deinit();
    const alloc = allocrena.allocator();

    //in registry
    const in = try std.fs.cwd().openFile("gl.xml", .{ .mode = std.fs.File.OpenMode.read_only });
    defer in.close();

    //temporary zig file
    const temp = try std.fs.cwd().openFile("tempgl.zig", .{});
    defer temp.close();

    //out zig file
    const out = try std.fs.cwd().openFile("gl.zig", .{});
    defer out.close();
    std.debug.print("{s}", .{try in.readToEndAlloc(alloc, 999999999)});
}
