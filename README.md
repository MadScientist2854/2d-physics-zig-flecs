# 2d-physics-zig-flecs
some 2D physics components and systems in for FLECS, in Zig, using some raylib code (the repo name was long enough without adding raylib on)

for use with the template at https://github.com/MadScientist2854/zig-raylib-flecs-template, but you can use it in any project if you just hook this up properly; call the `init` function from init.zig, have the right dependencies, set up raylib properly and make sure that rendering starts and ends at the right time.

if you're using the template, just call `init` from the template's `init.zig`, and `usingnamespace` the physics components and systems inside the template's export files.