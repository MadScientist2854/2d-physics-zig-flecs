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


    // init systems


}