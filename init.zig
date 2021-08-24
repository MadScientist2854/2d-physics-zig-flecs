const std = @import("std");
const flecs = @import("flecs");
const rl = @import("raylib.zig");
const cm = @import("chipmunk");
pub const components = @import("components/export.zig");
pub const systems = @import("systems/export.zig");
const mod_2d_render = @import("2d-render/init.zig");

pub fn init(world: *flecs.World, space: *cm.cpSpace) void {
    // init modules
    mod_2d_render.init(world);

    // init components
    _ = world.newComponent(components.Velocity2D);
    _ = world.newComponent(components.PhysicsBody);

    // init systems
    _ = world.newSystem("Update Physac", .pre_update, "", systems.update_physac);
    systems.space = space;
    _ = world.newSystem("Step Through Space", .pre_update, "", systems.step_space);

    _ = world.newSystem("Apply Velocity", .on_update, "Velocity2D, Position2D", systems.apply_velocity);
}