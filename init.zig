const std = @import("std");
const flecs = @import("flecs");
const rl = @import("raylib.zig");
pub const components = @import("components/export.zig");
pub const systems = @import("systems/export.zig");
const mod_2d_render = @import("2d-render/init.zig");

pub fn init(world: *flecs.World) void {
    // init modules
    mod_2d_render.init(world);

    // init components
    _ = world.newComponent(components.Velocity2D);
    _ = world.newComponent(components.PhysicsBody);

    // init systems
    _ = world.newSystem("Update Physac", .pre_update, "", systems.update_physac);

    _ = world.newSystem("Apply Velocity", .on_update, "Velocity2D, Position2D", systems.apply_velocity);
}