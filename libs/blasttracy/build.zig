const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const options = .{
        .enable_blasttracy = b.option(
            bool,
            "enable_blasttracy",
            "Enable Tracy profiler",
        ) orelse false,
        .enable_fibers = b.option(
            bool,
            "enable_fibers",
            "Enable Tracy fibers",
        ) orelse false,
        .on_demand = b.option(
            bool,
            "on_demand",
            "Build Tacy with TRACY_ON_DEMAND",
        ) orelse false,
    };

    const options_step = b.addOptions();
    inline for (std.meta.fields(@TypeOf(options))) |field| {
        options_step.addOption(field.type, field.name, @field(options, field.name));
    }

    const options_module = options_step.createModule();

    const blasttracy = b.addModule("root", .{
        .root_source_file = b.path("src/blasttracy.zig"),
        .imports = &.{
            .{
                .name = "blasttracy_options",
                .module = options_module,
            },
        },
    });

    blasttracy.addIncludePath(b.path("libs/tracy/tracy"));

    const tracy = b.addStaticLibrary(.{
        .name = "tracy",
        .target = target,
        .optimize = optimize,
    });

    tracy.addIncludePath(b.path("libs/tracy/tracy"));
    tracy.addCSourceFile(.{
        .file = b.path("libs/tracy/TracyClient.cpp"),
        .flags = &.{
            "-DTRACY_ENABLE",
            if (options.enable_fibers) "-DTRACY_FIBERS" else "",
            "-D_WIN32_WINNT=0x601",
            "-fno-sanitize=undefined",
        },
    });

    if (options.on_demand) tracy.defineCMacro("TRACY_ON_DEMAND", null);

    tracy.linkLibC();
    if (target.result.abi != .msvc)
        tracy.linkLibCpp();

    switch (target.result.os.tag) {
        .windows => {
            tracy.linkSystemLibrary("ws2_32");
            tracy.linkSystemLibrary("dbghelp");
        },
        .macos => {},
        else => {},
    }

    b.installArtifact(tracy);

    const test_step = b.step("test", "Run blasttracy tests");

    const tests = b.addTest(.{
        .name = "blasttracy-tests",
        .root_source_file = b.path("src/blasttracy.zig"),
        .target = target,
        .optimize = optimize,
    });
    tests.linkLibrary(tracy);
    b.installArtifact(tests);

    test_step.dependOn(&b.addRunArtifact(tests).step);
}
