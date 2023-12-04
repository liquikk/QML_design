import Felgo 3.0
import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.14

ApplicationWindow {
    visible: true
    width: 380
    height: 640
    title: "QML_5"

    Rectangle {
        anchors.fill: parent
        Column {
            spacing: 10
            anchors.centerIn: parent

            Rectangle {
                id: rect_red
                width: 75
                height: 75
                color: "red"
                border.color: "black"
                border.width: 2
            }

            Rectangle {
                id: rect_yellow
                width: 75
                height: 75
                color: "yellow"
                border.color: "black"
                border.width: 2
            }

            Rectangle {
                id: rect_green
                width: 75
                height: 75
                color: "green"
                border.color: "black"
                border.width: 2
            }            
        }

        states: [
            State {
                name: "stop"
                PropertyChanges { target: rect_red; color: "red" }
                PropertyChanges { target: rect_yellow; color: "gray" }
                PropertyChanges { target: rect_green; color: "gray" }
            },
            State {
                name: "caution"
                PropertyChanges { target: rect_red; color: "gray" }
                PropertyChanges { target: rect_yellow; color: "yellow" }
                PropertyChanges { target: rect_green; color: "gray" }
            },
            State {
                name: "go"
                PropertyChanges { target: rect_red; color: "gray" }
                PropertyChanges { target: rect_yellow; color: "gray" }
                PropertyChanges { target: rect_green; color: "green" }
            }
        ]

        transitions: [
            Transition {
                from: "stop"
                to: "caution"
            },
            Transition {
                from: "caution"
                to: "go"
            },
            Transition {
                from: "go"
                to: "stop"
            }
        ]

        state: "stop"

        ColorAnimation {
                id: colorAnim1
                target: rect_red
                property: "color"
                to: "red"
                duration: 1000
            }
        ColorAnimation {
                id: colorAnim2
                target: rect_green
                property: "color"
                to: "green"
                duration: 1000
            }
        ColorAnimation {
                id: colorAnim3
                target: rect_yellow
                property: "color"
                to: "yellow"
                duration: 1000
            }
        MouseArea {
            anchors.fill: parent

            onClicked: {
                if (parent.state === "stop") {
                    colorAnim1.stop()
                    colorAnim3.start();
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    colorAnim3.stop()
                    colorAnim2.start();
                    parent.state = "go";
                } else {
                    colorAnim2.stop()
                    colorAnim1.start()
                    parent.state = "stop";
                }
            }
        }
    }
}