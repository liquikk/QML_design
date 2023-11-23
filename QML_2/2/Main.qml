import Felgo 4.0
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    id:win
    visible: true
    width: 800
    height: 600
    title: "QML_2"

    Column {
        anchors.fill: parent
        spacing: 10

        Rectangle {
            id:header
            width: parent.width
            height: 75
            color: "lightgray"
            Text {
                anchors.centerIn: parent
                text: "Header"
            }
        }

        Rectangle {
            id:cont
            width: parent.width
            height: parent.height - header.height - footer.height - 20
            color: "white"
            border.color: "lightgray"
            border.width: 1
            anchors.left: parent.left
            anchors.right: parent.right 
            anchors.margins: 10
            Text {
                anchors.centerIn: parent
                text: "Content"
            }
        }

        Row {
            id:footer
            width: parent.width
            height: 75
            spacing: 5

            Rectangle {
                width: parent.width / 3
                height: parent.height
                color: "lightgray"
                Text {
                    anchors.centerIn: parent
                    text: "1"
                }
            }

            Rectangle {
                width: parent.width / 3
                height: parent.height
                color: "lightgray"
                Text {
                    anchors.centerIn: parent
                    text: "2"
                }
            }

            Rectangle {
                width: parent.width / 3
                height: parent.height
                color: "lightgray"
                Text {
                    anchors.centerIn: parent
                    text: "3"
                }
            }
        }
    }


}

