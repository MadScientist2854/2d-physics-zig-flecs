const flecs = @import("flecs");
const rl = @import("raylib");
const rm = @import("raymath");
const components = @import("../components/export.zig");

pub fn apply_velocity(it: *flecs.ecs_iter_t) callconv(.C) void { // Velocity, Position
    const velocities = it.column(components.Velocity, 1);
    const positions = it.column(components.Position2D, 2);

    var i: usize = 0;
    while (i < it.count) : ( i += 1 ) {
        const pos_cmp = &positions[i];
        const pos = rm.Vector2 { .x = pos_cmp.x, .y = pos_cmp.y };
        const vel_cmp = &velocities[i];
        const vel = rm.Vector2 { .x = vel_cmp.x, .y = vel_cmp.y };

        // add velocity to position
        const new_position = pos.Add(vel);
        pos_cmp.x = new_position.x;
        pos_cmp.y = new_position.y;
    }
}