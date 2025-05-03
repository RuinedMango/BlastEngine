const std = @import("std");
const glfw = @import("blastglfw");
const gl = @import("blastgl");

var funcs: gl.FuncTable = undefined;

pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    try glfw.init();
    defer glfw.terminate();

    const window = try glfw.Window.create(600, 600, "Cuck", null);
    defer window.destroy();

    glfw.makeContextCurrent(window);
    if(!funcs.init(glfw.getProcAddress)) return error.NotInitialized;

    gl.makeFuncTableCurrent(&funcs);
    
    const alpha: gl.float = 1;
    gl.ClearColor(1, 1, 1, alpha);

    glfw.swapInterval(1);

    while (!window.shouldClose()) {
        glfw.pollEvents();

        gl.Clear(gl.COLOR_BUFFER_BIT);

        window.swapBuffers();
    }
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
