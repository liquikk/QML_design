import Felgo 4.0
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "QML_1"

    Rectangle {
        id: main
        width: parent.width
        height: parent.height
        color: "white"

        Rectangle {
            id: header
            width: parent.width
            height: 75
            color: "lightgray"
            Text {
                anchors.centerIn: parent
                text: "Header"
            }
        }

        Rectangle {
                id: content
                width: parent.width
                height: parent.height - header.height - 3 * footer.height - 20
                color: "white"
                anchors.top: header.bottom
                anchors.margins: 10
                border.color: "lightgray"
                border.width: 1
                anchors.left: parent.left
                anchors.right: parent.right  
                anchors.bottom: footer.top
                Text{
                    anchors.centerIn: parent
                    text:"Content"
                }
        }

        Row {
            id: footer
            width: parent.width
            height: 75 
            anchors.bottom: parent.bottom
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