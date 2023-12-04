import Felgo 3.0
import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.14


ApplicationWindow {
    visible: true
    width: 600
    height: 800
    title: "login"
    color: "lightgray"
    Column{
        anchors.centerIn:parent
        spacing: 10
        TextField {
            id: user
            placeholderText: "Username"
            font.pixelSize: 16
        }
        TextField {
            id: pass
            placeholderText: "Password"
            font.pixelSize: 16
            echoMode: TextInput.Password
        }
        Row{
            spacing: 10
            Button{
                text: "Log In"
            }
            Button{
                width: 90
                height: 40
                text: "Clear"
                background: Rectangle {

                    color: parent.down ? "grey" :
                        ("lightgray")
        
                }
                onClicked:{ 
                    user.text="";
                    pass.text=""
                }
            }
        }
    }
}