const flecs = @import("flecs");
const rl = @import("raylib");

pub fn update_physac(it: *flecs.ecs_iter_t) callconv(.C) void {
    rl.UpdatePhysics();
}