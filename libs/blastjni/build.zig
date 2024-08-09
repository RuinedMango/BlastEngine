const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const options = .{
        .placeholder = b.option(
            bool,
            "placeholder",
            "random placeholder",
        ) orelse false,
    };

    const options_step = b.addOptions();
    inline for (std.meta.fields(@TypeOf(options))) |field| {
        options_step.addOption(field.type, field.name, @field(options, field.name));
    }

    const options_module = options_step.createModule();

    const blastjni = b.addModule("root", .{
        .root_source_file = b.path("src/blastjni.zig"),
        .imports = &.{.{ .name = "blastjni_options", .module = options_module }},
    });

    const jni = b.addStaticLibrary(.{
        .name = "jni",
        .target = target,
        .optimize = optimize,
    });
    b.installArtifact(jni);

    blastjni.addIncludePath(b.path("libs/include"));
    jni.linkLibC();
    switch (target.result.os.tag) {
        .windows => {
            blastjni.addIncludePath(b.path("libs/include/win32"));
        },
        else => {
            unreachable;
        },
    }
    blastjni.addObjectFile(b.path("libs/libjvm.a"));

    const test_step = b.step("test", "Run blastjni tests");

    const tests = b.addTest(.{
        .name = "blastjni-tests",
        .root_source_file = b.path("src/blastjni.zig"),
        .target = target,
        .optimize = optimize,
    });
    tests.root_module.addImport("blastjni_options", options_module);
    b.installArtifact(tests);
    tests.addIncludePath(b.path("libs/include"));

    tests.linkLibrary(jni);
    test_step.dependOn(&b.addRunArtifact(tests).step);
}
