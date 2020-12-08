const std = @import("std");
const Builder = std.build.Builder;
const Target = std.build.Target;
const fmt = std.fmt;

const Pkg = struct {
    name: []const u8,
    src: []const u8,
    run: []const u8,
};

fn newPkg(comptime name: []const u8) Pkg {
    return Pkg{
        .name = name,
        .src = name ++ "/src/main.zig",
        .run = "Run " ++ name,
    };
}

const days = [_]Pkg{
    newPkg("day1"),
    newPkg("day2"),
    newPkg("day3"),
    newPkg("day4"),
    newPkg("day5"),
    newPkg("day6"),
    newPkg("day7"),
    newPkg("day8"),
};

fn dayBuild(day: Pkg, b: *Builder, target: Target, mode: std.builtin.Mode) void {
    const exe = b.addExecutable(day.name, day.src);
    exe.addPackagePath("nil", "lib/nil/nil.zig");
    exe.setTarget(target);
    exe.setBuildMode(mode);
    exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step(day.name, day.run);
    run_step.dependOn(&run_cmd.step);
}

pub fn build(b: *Builder) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    for (days) |day| {
        dayBuild(day, b, target, mode);
    }
}
