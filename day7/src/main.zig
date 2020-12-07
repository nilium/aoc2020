const std = @import("std");

pub fn main() anyerror!void {
    const rules = @import("./input_rules.zig").rules;
    const gold = rules.getID("shiny gold").?;
    const holding = rules.countHolding(gold);
    const contains = rules.countContains(gold) - 1; // -1 to not count the root rule.
    std.log.info("Rule = {} Holding = {} Contains = {}", .{ gold, holding, contains });
}

test "part 1" {
    const rules = @import("./sample_rules.zig").rules;
    const gold = rules.getID("shiny gold").?;
    const holding = rules.countHolding(gold);
    std.testing.expectEqual(@intCast(usize, 4), holding);
}

test "part 2" {
    const rules = @import("./sample_rules.zig").rules;
    const gold = rules.getID("shiny gold").?;
    const contains = rules.countContains(gold) - 1;
    std.testing.expectEqual(@intCast(usize, 32), contains);
}
