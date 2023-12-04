import Felgo 4.0
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

ApplicationWindow{
    visible: true
    width: 400
    height: 800
    Rectangle {
                width: parent.width
                height: parent.height
                gradient:Gradient{
                GradientStop{position:0;color:"greenyellow"}
                GradientStop{position:1;color:"wheat"}
                }
                z: -1
            }
    ListModel{
        id:my_model
        ListElement{ msg:"Alo!"; time:"11:11"}
        ListElement{ msg:"Da?"; time:"12:12"}
        ListElement{ msg:"I'm a soccer ball"; time:"13:13"}
    }
    Component{
        id:my_delegate
        Element{
            msg:model.msg
            time:model.time
            width:parent.width
            height:52
        }
    }
    ListView{
        id:my_list
        spacing: 6
        anchors.margins: 10 
        anchors.fill:parent
        model:my_model
        delegate:my_delegate
    }

    footer: PageFooter {
        onNewMessage: {
            var newMsg = {};
            newMsg.msg = msg;
            newMsg.time = Qt.formatTime(new Date(), "hh:mm");
            my_model.append(newMsg);
        }
    }
}
