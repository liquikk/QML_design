import Felgo 4.0
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Item {
    id:deleg
    property string msg: "?"
    property string time: "?"
    Rectangle{
        id:rect
        border.color:"darkgrey"
        radius:5
        anchors.fill:parent
        gradient:Gradient{
            GradientStop{position:0;color:"lightgray"}
            GradientStop{position:1;color:"white"}
        }
    }
    Row{
        id:row
        anchors.left:parent.left
        anchors.right: parent.right
        height:parent.height
        anchors.margins: 16
        spacing:6
        Text{text:msg;anchors.verticalCenter:
        row.verticalCenter}
        Text{ text:time; anchors.verticalCenter:
        row.verticalCenter; anchors.right: parent.right}
}
}