import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: base_mat_material
        objectName: "Base_mat"
        baseColor: "#2B2B2E"
        metalness: 0.4000000059604645
        roughness: 0.5
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: link1_mat_material
        objectName: "Link1_mat"
        baseColor: "#9AA0A6"
        metalness: 0.4000000059604645
        roughness: 0.4000000059604645
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: link2_mat_material
        objectName: "Link2_mat"
        baseColor: "#E5E7EA"
        metalness: 0.30000001192092896
        roughness: 0.4000000059604645
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: link3_mat_material
        objectName: "Link3_mat"
        baseColor: "#D7263D"
        metalness: 0.30000001192092896
        roughness: 0.4000000059604645
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: scara
        objectName: "Scara"
        Model {
            id: base
            objectName: "Base"
            source: "qrc:/qt/qml/Scara/Resources/meshes/base_mesh.mesh"
            materials: [
                base_mat_material
            ]
        }
        Model {
            id: link1
            objectName: "Link1"
            position: Qt.vector3d(0, 0, -0.0981245)
            source: "qrc:/qt/qml/Scara/Resources/meshes/link1_mesh.mesh"
            materials: [
                link1_mat_material
            ]
        }
        Model {
            id: link2
            objectName: "Link2"
            position: Qt.vector3d(0.000239213, 0, -0.0981245)
            rotation: Qt.quaternion(0.999995, 0, 0, 0.00330341)
            source: "qrc:/qt/qml/Scara/Resources/meshes/link2_mesh.mesh"
            materials: [
                link2_mat_material
            ]
        }
        Model {
            id: link3
            objectName: "Link3"
            position: Qt.vector3d(-0.0373546, 0.00386106, -0.0981245)
            rotation: Qt.quaternion(0.994426, 0, 0, -0.105432)
            source: "qrc:/qt/qml/Scara/Resources/meshes/link3_mesh.mesh"
            materials: [
                link3_mat_material
            ]
        }
    }

    // Animations:
}
