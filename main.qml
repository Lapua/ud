import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1280
    height: 720
    title: qsTr("Joe Jack")
    color: "black"

    Rectangle {
        id: udaRect
        x: parent.width/2 - width/2
        y: parent.height/2 - height/2
        width: udaImage.width + 15
        height: udaImage.height + 15
        radius: 15
        border.width: 20
        border.color: "skyBlue"

        RotationAnimator {
            target: udaRect
            from: 0;
            to: 360;
            duration: 500
            running: true
            loops: Animation.Infinite
        }

        Image {
            id: udaImage
            anchors.centerIn: parent
            source: "56.jpg"
            fillMode: Image.PreserveAspectFit
        }

        Behavior on x {
            NumberAnimation {
                duration: 500
                easing.type: Easing.OutBounce
            }
        }

        Behavior on y {
            NumberAnimation {
                duration: 500
                easing.type: Easing.OutBounce
            }
        }
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            udaRect.x = mouseX - udaRect.width/2
            udaRect.y = mouseY - udaRect.height/2
        }
    }
}
