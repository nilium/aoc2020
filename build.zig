const std = @import("std");
const Builder = std.build.Builder;
const Target = std.build.Target;
const fmt = std.fmt;

const Pkg = struct {
    name: []const u8,
    src: []const u8,
    run: []const u8,
};

fn dayPkg(comptime day: comptime_int, comptime src: []const u8) Pkg {
    return Pkg{
        .name = fmt.comptimePrint("day{}", .{day}),
        .src = src,
        .run = fmt.comptimePrint("Run day {}", .{day}),
    };
}

const days = [_]Pkg{
    dayPkg(1, "day1/src/main.zig"),
    dayPkg(2, "day2/src/main.zig"),
    dayPkg(3, "day3/src/main.zig"),
    dayPkg(4, "day4/src/main.zig"),
    dayPkg(5, "day5/src/main.zig"),
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
