# Licensing notice

This repository contains material under two licenses.

| Files | License |
|---|---|
| `assets/source/*`, `Resources/meshes/*`, `Scara.qml` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) |
| All other files | MIT (see `LICENSE`) |

## Third-party 3D model

The robot model is **"Four Axis Robotic Arm"** by **CVRA (Club Vaudois de Robotique Autonome)**, obtained from GrabCAD:
https://grabcad.com/library/four-axis-robotic-arm-1

It is licensed under Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0):
https://creativecommons.org/licenses/by-sa/4.0/
(legal code: https://creativecommons.org/licenses/by-sa/4.0/legalcode.en)

### Changes made to the original model

- Converted from CAD (STEP) to glTF with Open CASCADE.
- Merged the per-face primitives of each part into a single mesh per part in Blender.
- Assigned a separate material to each part and changed the colors.
- Converted the result to Qt Quick 3D `.mesh` files and a QML scene (`Scara.qml`) with Balsam, then edited the generated QML by hand (mesh paths, material colors).

The files derived from the model (`assets/source/*`, `Resources/meshes/*`, `Scara.qml`) are distributed under the same license, CC BY-SA 4.0.

The original author does not endorse this project.

## Code

All other source files (for example `main.cpp`, `Main.qml`, `CMakeLists.txt`) are released under the MIT License. See `LICENSE`.
