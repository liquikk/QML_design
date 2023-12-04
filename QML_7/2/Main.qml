import Felgo 3.0
import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.14

ApplicationWindow {
    visible: true
    width: 600
    height: 800
    title: "pin"
    Column{
        
        anchors.centerIn: parent
        spacing: 25
        Text {
            text: "Enter your password:"
            font.pixelSize: 16
            // Layout.alignment: Qt.AlignCenter
        }
        Rectangle {
                Text{
                    id: passwordField
                    text:""
                    opacity: 0
                    font.pointSize: 1
                    }
            
            color: "white"
            width: parent.width
            height: 50
            // Layout.alignment: Qt.AlignCenter
            Row {
                spacing: 10
                anchors.centerIn: parent
                Repeater {
                    model:6
                    
                    Label {
                        width: 20
                        height: 20
                        font.pixelSize: 36
                        text: "❆"
                        Layout.alignment: Qt.AlignCenter
                        color:index <passwordField.text.length ? "black" : "light grey"
                    }
                }
            }
        }
        GridLayout {
            id: keypad
            rows: 4
            columns: 3
            width: parent.width
            x:-60
            Button {
                text: "1"
                onClicked: passwordField.text += "1"
            }
            Button {
                text: "2"
                onClicked: passwordField.text+= "2"
            }
            Button {
                text: "3"
                onClicked: passwordField.text += "3"
            }
            Button {
                text: "4"
                onClicked: passwordField.text+= "4"
            }
            Button {
                text: "5"
                onClicked: passwordField.text += "5"
            }
            Button {
                text: "6"
                onClicked: passwordField.text+= "6"
            }
            Button {
                text: "7"
                onClicked: passwordField.text += "7"
            }
            Button {
                text: "8"
                onClicked: passwordField.text+= "8"
            }
            Button {
                text: "9"
                onClicked: passwordField.text += "9"
            }
            Button {
                text: ""
                onClicked: passwordField.text += ""
            }
            Button {
                text: "0"
                onClicked: passwordField.text+= "0"
            }
            Button {
                text: "Clear"
                onClicked: passwordField.text = ""
            }
    }
        Button {
                    text: "Log In"
                    x: -60
                }
}
}