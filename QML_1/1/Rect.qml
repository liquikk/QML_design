import QtQuick 2.15
Item{
    property alias comColor:rect.color
    property alias comW:rect.width
    property alias comH:rect.height
    Rectangle {
                id: rect
                width: 250
                height: 250
                radius: 5
                border.color: "black"
                border.width: 1
    }
}