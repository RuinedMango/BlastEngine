const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const options = .{
        .shared = b.option(
            bool,
            "shared",
            "Build GLFW as shared lib",
        ) orelse false,
        .enable_x11 = b.option(
            bool,
            "x11",
            "Whether to build with X11 support (default: true)",
        ) orelse true,
        .enable_wayland = b.option(
            bool,
            "wayland",
            "whether to build with Wayland support (default: true)",
        ) orelse true,
    };

    const options_step = b.addOptions();
    inline for (std.meta.fields(@TypeOf(options))) |field| {
        options_step.addOption(field.type, field.name, @field(options, field.name));
    }

    const options_module = options_step.createModule();

    _ = b.addModule("root", .{
        .root_source_file = b.path("src/blastglfw.zig"),
        .imports = &.{.{ .name = "blastglfw_options", .module = options_module }},
    });

    const glfw = if (options.shared) blk: {
        const lib = b.addSharedLibrary(.{
            .name = "glfw",
            .target = target,
            .optimize = optimize,
        });
        if (target.result.os.tag == .windows) {
            lib.defineCMacro("_GLFW_BUILD_DLL", null);
        }
        break :blk lib;
    } else b.addStaticLibrary(.{
        .name = "glfw",
        .target = target,
        .optimize = optimize,
    });
    b.installArtifact(glfw);

    glfw.addIncludePath(b.path("libs/glfw/include"));
    glfw.linkLibC();

    const src_dir = "libs/glfw/src/";
    switch (target.result.os.tag) {
        .windows => {
            glfw.linkSystemLibrary("gdi32");
            glfw.linkSystemLibrary("user32");
            glfw.linkSystemLibrary("shell32");
            glfw.addCSourceFiles(.{
                .files = &.{
                    src_dir ++ "platform.c",
                    src_dir ++ "monitor.c",
                    src_dir ++ "init.c",
                    src_dir ++ "vulkan.c",
                    src_dir ++ "input.c",
                    src_dir ++ "context.c",
                    src_dir ++ "window.c",
                    src_dir ++ "osmesa_context.c",
                    src_dir ++ "egl_context.c",
                    src_dir ++ "null_init.c",
                    src_dir ++ "null_monitor.c",
                    src_dir ++ "null_window.c",
                    src_dir ++ "null_joystick.c",
                    src_dir ++ "wgl_context.c",
                    src_dir ++ "win32_thread.c",
                    src_dir ++ "win32_init.c",
                    src_dir ++ "win32_monitor.c",
                    src_dir ++ "win32_time.c",
                    src_dir ++ "win32_joystick.c",
                    src_dir ++ "win32_window.c",
                    src_dir ++ "win32_module.c",
                },
                .flags = &.{"-D_GLFW_WIN32"},
            });
        },
        else => {},
    }

    const test_step = b.step("test", "Run blastglfw tests");

    const tests = b.addTest(.{
        .name = "blastglfw-tests",
        .root_source_file = b.path("src/blastglfw.zig"),
        .target = target,
        .optimize = optimize,
    });
    tests.root_module.addImport("blastglfw_options", options_module);
    b.installArtifact(tests);

    tests.addIncludePath(b.path("libs/glfw/include"));

    tests.linkLibrary(glfw);

    test_step.dependOn(&b.addRunArtifact(tests).step);
}
