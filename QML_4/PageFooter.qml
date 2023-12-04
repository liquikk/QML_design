import Felgo 4.0
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Rectangle{
    id:root;height:60
    gradient:Gradient{
        GradientStop{position:0;color:"lightgray"}
        GradientStop{position:1;color:"white"}
    }
    signal newMessage(string msg)
    TextField {
            id: edtText
            selectByMouse: true
            anchors.fill:root
            placeholderText: "Write a message..."
            font.pointSize: 10;color: "black" }
        Button {
            id: btnAddItem
            height:root.height
            anchors.right:parent.right
            text: "Отправить"
        onClicked: {
            newMessage(edtText.text);
            edtText.clear();
        }
    }
}