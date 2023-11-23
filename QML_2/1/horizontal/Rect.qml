import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

RowLayout {
    spacing: 5
    Rectangle {
        id: rect
        Layout.fillWidth: true
        Layout.preferredHeight: 120
        border.width: 1
        color: Qt.rgba(Math.random(), Math.random(), Math.random(), 0.7)
        Text {
            text: "My color:" +rect.color
            anchors.centerIn: rect
            font.pixelSize: 24
        }
    }
}