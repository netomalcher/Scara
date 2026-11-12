import QtQuick
import QtQuick.Window
import QtQuick3D
import QtQuick3D.Helpers

Window {
    width: 800
    height: 600
    visible: true
    title: "SCARA Robot"

    View3D {
        anchors.fill: parent

        environment: SceneEnvironment {
            backgroundMode: SceneEnvironment.Color
            clearColor: "#424242"
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        // Camera orbits around the robot's center (units in mm)
        Node {
            id: cameraOrigin
            position: Qt.vector3d(0, 0, 0)

            PerspectiveCamera {
                id: camera
                position: Qt.vector3d(0, 0, 450)   // distance from robot: increase if too big, decrease if too small
                clipNear: 1
                clipFar: 5000
            }

            // Main light
            DirectionalLight {
                eulerRotation.x: -20
                eulerRotation.y: -20
                brightness: 2.0
            }

            // Weaker fill light from the opposite side
            DirectionalLight {
                eulerRotation.x: -20
                eulerRotation.y: 160
                brightness: 0.8
            }
        }

        // Mouse: drag to orbit, scroll to zoom
        OrbitCameraController {
            anchors.fill: parent
            origin: cameraOrigin
            camera: camera
        }

        Scara {
            id: robot
            scale: Qt.vector3d(1000, 1000, 1000) // milimeters
            eulerRotation.x: 90
        }
    }
}