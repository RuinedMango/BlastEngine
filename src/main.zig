const std = @import("std");
const glfw = @import("blastglfw");
const gl = @import("blastgl");

var funcs: gl.FuncTable = undefined;

const vertices = [_]f32{
    0.5, 0.5, 0.0,
    0.5, -0.5, 0.0,
    -0.5, -0.5, 0.0,
    -0.5, 0.5, 0.0,
};

const indices = [_]gl.uint{
    0, 1, 3,
    1, 2, 3,
};

const vertexShaderSource =
    \\#version 460
    \\layout (location = 0) in vec3 aPos;
    \\void main() {
    \\  gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
    \\}
;

const fragmentShaderSource =
    \\#version 460
    \\out vec4 FragColor;
    \\void main() {
    \\  FragColor = vec4(0.8f, 0.5f, 0.2f, 1.0f);
    \\}
;

var VBO: gl.uint = undefined;
var VAO: gl.uint = undefined;
var EBO: gl.uint = undefined;

pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    try glfw.init();
    defer glfw.terminate();
    glfw.windowHint(glfw.WindowHint.context_version_major, 4);
    glfw.windowHint(glfw.WindowHint.context_version_minor, 6);
    glfw.windowHintTyped(glfw.WindowHint.opengl_profile, glfw.OpenGLProfile.opengl_core_profile);

    const window = try glfw.Window.create(600, 600, "Weener", null);
    defer window.destroy();

    glfw.makeContextCurrent(window);
    if(!funcs.init(glfw.getProcAddress)) return error.NotInitialized;
    gl.makeFuncTableCurrent(&funcs);

    var success: c_int = undefined;
    var info_log_buf: [512:0]u8 = undefined;

    const vertexShader: gl.uint = gl.CreateShader(gl.VERTEX_SHADER);
    gl.ShaderSource(vertexShader, 1, &.{vertexShaderSource}, &.{vertexShaderSource.len});
    gl.CompileShader(vertexShader);
    gl.GetShaderiv(vertexShader, gl.COMPILE_STATUS, &success);
    if(success == gl.FALSE){
        gl.GetShaderInfoLog(vertexShader, info_log_buf.len, null, &info_log_buf);
        std.debug.print("{s}", .{std.mem.sliceTo(&info_log_buf, 0)});
        return error.InvalidValue;
    }

    const fragmentShader: gl.uint = gl.CreateShader(gl.FRAGMENT_SHADER);
    gl.ShaderSource(fragmentShader, 1, &.{fragmentShaderSource}, &.{fragmentShaderSource.len});
    gl.CompileShader(fragmentShader);
    gl.GetShaderiv(fragmentShader, gl.COMPILE_STATUS, &success);
    if(success == gl.FALSE){
        gl.GetShaderInfoLog(fragmentShader, info_log_buf.len, null, &info_log_buf);
        std.debug.print("{s}", .{std.mem.sliceTo(&info_log_buf, 0)});
        return error.InvalidValue;
    }

    const shaderProgram: gl.uint = gl.CreateProgram();
    gl.AttachShader(shaderProgram, vertexShader);
    gl.AttachShader(shaderProgram, fragmentShader);
    gl.LinkProgram(shaderProgram);
    gl.GetProgramiv(shaderProgram, gl.LINK_STATUS, &success);
    if(success == gl.FALSE) {
        gl.GetProgramInfoLog(shaderProgram, info_log_buf.len, null, &info_log_buf);
        std.debug.print("{s}", .{std.mem.sliceTo(&info_log_buf, 0)});
        return error.InvalidValue;
    }

    gl.DeleteShader(vertexShader);
    gl.DeleteShader(fragmentShader);
    
    gl.GenVertexArrays(1, (&VAO)[0..1]);
    gl.GenBuffers(1, (&VBO)[0..1]);
    gl.GenBuffers(1, (&EBO)[0..1]);

    gl.BindVertexArray(VAO);

    gl.BindBuffer(gl.ARRAY_BUFFER, VBO);
    gl.BufferData(gl.ARRAY_BUFFER, @sizeOf(@TypeOf(vertices)), &vertices, gl.STATIC_DRAW);

    gl.BindBuffer(gl.ELEMENT_ARRAY_BUFFER, EBO);
    gl.BufferData(gl.ELEMENT_ARRAY_BUFFER, @sizeOf(@TypeOf(indices)), &indices, gl.STATIC_DRAW);

    gl.VertexAttribPointer(0, 3, gl.FLOAT, gl.FALSE, 3 * @sizeOf(gl.float), 0);
    gl.EnableVertexAttribArray(0);

    gl.BindBuffer(gl.ARRAY_BUFFER, 0);

    gl.BindVertexArray(0);

    const alpha: gl.float = 1;
    gl.ClearColor(0.2, 0.3, 0.3, alpha);

    glfw.swapInterval(1);

    while (!window.shouldClose()) {
        glfw.pollEvents();

        gl.Clear(gl.COLOR_BUFFER_BIT);

        gl.UseProgram(shaderProgram);
        gl.BindVertexArray(VAO);
        gl.DrawElements(gl.TRIANGLES, 6, gl.UNSIGNED_INT, 0);

        window.swapBuffers();
    }
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
