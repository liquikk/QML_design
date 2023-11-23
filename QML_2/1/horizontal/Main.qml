import Felgo 4.0
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

ApplicationWindow {
    visible: true
    width: 800
    height: 400

    RowLayout {
        anchors.fill: parent

        Rect {}

        Item {
            Layout.fillHeight: true
            Layout.preferredHeight: 10
        }

        Rect {}

        Item {
            Layout.fillHeight: true
            Layout.preferredHeight: 10
        }

        Rect {}
    }
}