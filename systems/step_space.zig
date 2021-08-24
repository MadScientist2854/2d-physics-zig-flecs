const flecs = @import("flecs");
const cm = @import("chipmunk");

pub var space: *cm.cpSpace = undefined;

pub fn step_space(it: *flecs.ecs_iter_t) callconv(.C) void {
    cm.cpSpaceStep(space, 1/60);
}