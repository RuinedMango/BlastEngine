const std = @import("std");
const tracy = @import("blasttracy");
const glfw = @import("blastglfw");

pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const tracy_zone = tracy.ZoneN(@src(), "Ballin");
    defer tracy_zone.End();
    try glfw.init();
    defer glfw.terminate();

    const window = try glfw.Window.create(600, 600, "Cuck", null);
    defer window.destroy();

    glfw.makeContextCurrent(window);

    glfw.swapInterval(1);

    while (!window.shouldClose()) {
        glfw.pollEvents();

        window.swapBuffers();
    }
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
