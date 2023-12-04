import Felgo 3.0
import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

ApplicationWindow {
    id:win
    visible: true
    width: 800
    height: 600
    title: "QML_5"
    Column {
        id: col
        anchors.fill: parent
        spacing: 10

        Rectangle {
            id:header
            width: parent.width
            height: 75
            color: "lightgray"
            ToolButton{
                    id:back_btn
                    anchors.verticalCenter: parent.verticalCenter
                    
                    Text{
                        text: "<"
                        font.pixelSize: 44
                        visible:stack_view.depth>1  
                        anchors.verticalCenter: parent.verticalCenter}
                        onClicked: {back()}
            }
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
                    col.state = "Kawasaki";
                }
                }
                Behavior on opacity {NumberAnimation {duration: 500}}
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
                    col.state = "Cago";
                }
                }
                Behavior on opacity {NumberAnimation {duration: 500}}
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
                    col.state = "Crico";
                }
                }
                Behavior on opacity {NumberAnimation {duration: 500}}
            }
        }
        states: [
            State {
                name: "Kawasaki"
                PropertyChanges { target: btn1; opacity: 1 }
                PropertyChanges { target: btn2; opacity: 0.3 }
                PropertyChanges { target: btn3; opacity: 0.3 }
                PropertyChanges{perviousStateIndex: currentStateIndex}
                PropertyChanges{currentStateIndex: 1}
                PropertyChanges { target: back_btn; opacity: 0 }
            },
            State {
                name: "Cago"
                PropertyChanges { target: btn1; opacity: 0.3 }
                PropertyChanges { target: btn2; opacity: 1 }
                PropertyChanges { target: btn3; opacity: 0.3 }
                PropertyChanges{perviousStateIndex: currentStateIndex}
                PropertyChanges{currentStateIndex: 2}
            },
            State {
                name: "Crico"
                PropertyChanges { target: btn1; opacity: 0.3 }
                PropertyChanges { target: btn2; opacity: 0.3 }
                PropertyChanges { target: btn3; opacity: 1 }   
                PropertyChanges{perviousStateIndex: currentStateIndex}
                PropertyChanges{currentStateIndex: 3}             
            },
            State {
                name: "Estriper"
                PropertyChanges { target: btn1; opacity: 0.3 }
                PropertyChanges { target: btn2; opacity: 0.3 }
                PropertyChanges { target: btn3; opacity: 0.3 }
                PropertyChanges{currentStateIndex: 0}
                PropertyChanges { target: back_btn; opacity: 0 }
            }
        ]

        transitions: [
            Transition {
                from: "Kawasaki"
                to: "Cago"
            },
            Transition {
                from: "Cago"
                to: "Crico"
            },
            Transition {
                from: "Crico"
                to: "Kawasaki"
            }
        ]

        state: "Estriper"
    }


}