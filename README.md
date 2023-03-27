# Threen - Godot 3 Tween for Godot 4

`Threen` is a forward port of Godot 3's `Tween` node to Godot 4, provided as a
GDExtension library.

## Why?

Godot 4 already has a different and better `Tween` class, which corresponds to
what was backported to Godot 3.5+ as `SceneTreeTween`.

But some users have complex Godot 3 projects using the old `Tween` API
extensively, and would benefit from keeping access to it when porting their
projects to Godot 4.

Therefore `Threen` is provided as a 1:1 forward port Godot 3's `Tween`. You only
need to add the GDExtension to your project ported from Godot 3, and replace
uses of the `Tween` node in your scenes and scripts with `Threen`. The rest of
the API stays unchanged, i.e. it's still `tween_completed`, etc.

## How to use

- Compile the library with `scons`.
- Copy the `bin` folder to the `demo` folder to try it out with the premade
  project.

## License

This library was copied from the Godot 3.x codebase (as of 3.5.2-stable) and is
therefore distributed under the same MIT license as Godot itself.
