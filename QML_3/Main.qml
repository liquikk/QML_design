import Felgo 4.0
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

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
                id:htext
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
                id:mtext
                anchors.centerIn: parent
                text: "Estriper"
            }
        }

        Row {
            id:footer
            width: parent.width
            height: 75
            spacing: 5

            Rectangle {
                id:btn1
                width: parent.width / 3
                height: parent.height
                color: "lightgray"
                Text {
                    id:tbtn1
                    anchors.centerIn: parent
                    text: "Item 1"
                }
                MouseArea {
                anchors.fill: parent
                onClicked: {
                    htext.text="Header 1";
                    mtext.text="Kawasaki 1";
                    tbtn1.opacity=1;
                    tbtn2.opacity=0.3;
                    tbtn3.opacity=0.3;
                }
                }
            }

            Rectangle {
                id:btn2
                width: parent.width / 3
                height: parent.height
                color: "lightgray"
                Text {
                    id:tbtn2
                    anchors.centerIn: parent
                    text: "Item 2"
                }
                MouseArea {
                anchors.fill: parent
                onClicked: {
                    htext.text="Header 2";
                    mtext.text="Cago 2";
                    tbtn2.opacity=1;
                    tbtn1.opacity=0.3;
                    tbtn3.opacity=0.3;
                }
                }
            }

            Rectangle {
                id:btn3
                width: parent.width / 3
                height: parent.height
                color: "lightgray"
                Text {
                    id:tbtn3
                    anchors.centerIn: parent
                    text: "Item 3"
                }
                MouseArea {
                anchors.fill: parent
                onClicked: {
                    htext.text="Header 3";
                    mtext.text="Crico 3";
                    tbtn3.opacity=1;
                    tbtn2.opacity=0.3;
                    tbtn1.opacity=0.3;
                }
                }
            }
        }
    }


}
