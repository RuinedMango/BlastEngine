const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = .ReleaseFast;

    const exe = b.addExecutable(.{
        .name = "blastgl",
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });
    
    b.installArtifact(exe);
    const run_cmd = b.addRunArtifact(exe);

    run_cmd.addArgs(&.{"-a", "gl", "-p", "core", "-av", "3", "-iv", "2"});

    const outstep = &b.addInstallFile(b.path("glg.zig"), "gl.zig").step;
    outstep.*.dependOn(&run_cmd.step);

    b.getInstallStep().dependOn(outstep);

    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

    const exe_unit_tests = b.addTest(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const run_exe_unit_tests = b.addRunArtifact(exe_unit_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_exe_unit_tests.step);
}

pub fn createOpenglModule(b: *std.Build, api: []const u8, profile: []const u8, majorver: u8, minorver: u8, extensions: []const []const u8 ) !*std.Build.Module{
    const blastgl_dep = b.dependencyFromBuildZig(@This(), .{
        .target = b.graph.host,
    });
    const blastgl_exe = blastgl_dep.artifact("blastgl");
    const run_blastgl = b.addRunArtifact(blastgl_exe);
    run_blastgl.addArgs(&.{
        "-a",
        api,
        "-p",
        profile,
        "-av",
        try std.fmt.allocPrint(b.allocator, "{}", .{majorver}),
        "-iv",
        try std.fmt.allocPrint(b.allocator, "{}", .{minorver}),
        "-e",
    });

    var extensionList = std.ArrayList(u8).init(b.allocator);
    for(extensions) |extension|{
        try extensionList.appendSlice(extension);
        try extensionList.append(':');
    }
    run_blastgl.addArg(extensionList.items);
    
    const output = run_blastgl.captureStdOut();
    run_blastgl.captured_stdout.?.basename = "gl.zig";
    return b.createModule(.{
        .root_source_file = output,
    });
}
