
import Felgo 4.0
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    id: win
    width: 360
    height: 780
    visible: true
    color: "green"
    title: qsTr("ALO")
            Rect {
                id: rect0
                comColor: "brown"
                x:win.width/2-50
                y:win.height/2-125
                z:2
                
            }
            Rect {
                id: rect00
                comW: 200
                comH: 200
                comColor: "orange"
                anchors.centerIn: rect0
                z:3
                }
                Rect {
                id: rect000
                comW: 150
                comH: 150
                comColor: "brown"
                anchors.centerIn: rect00
                z:4
                }
                Rect {
                id: rect0000
                comW: 100
                comH: 100
                comColor: "orange"
                anchors.centerIn: rect000
                z:5
                }
                Rect {
                id: rect00000
                comW: 50
                comH: 50
                comColor: "brown"
                anchors.centerIn: rect0000
                z:6
                }
            Rect{
                id: rect01
                comColor: "orange"
                comW: 150
                comH: 125
                x:rect0.x - 140
                y:rect0.y + 125
                z:1
            }
            Rect{
                id: rect02
                comColor: "orange"
                comW: 100
                comH: 30
                x:rect01.x 
                y:rect01.y - 25
                z:0
            }
            Rect{
                id: rect03
                comColor: "orange"
                comW: 20
                comH: 55
                x:rect02.x + 40
                y:rect02.y - 40
                z:1
            }
            Rect{
                id: rect04
                comColor: "orange"
                comW: 20
                comH: 55
                x:rect02.x 
                y:rect02.y - 40
                z:-1
            }
            Rect{
                id: rect05
                comColor: "black"
                comW: 20
                comH: 15
                anchors.top:rect03.top
                anchors.left:rect03.left
                z:5
            }
            Rect{
                id: rect06
                comColor: "black"
                comW: 20
                comH: 15
                anchors.top:rect04.top
                anchors.left:rect04.left
                z:5
            }           

}