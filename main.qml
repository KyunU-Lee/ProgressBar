import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ProgressBar{
        id: progress
        anchors.centerIn: parent
        width: 200
        height: 20
        value : 0.1

        //property의 뒷 배경 설정
        background: Rectangle{
            implicitHeight:  parent.height
            implicitWidth:  parent.width
            border.color:"black"
        }

        contentItem: Item{

            Rectangle {
                id: progValue
                // progressBar의 visual 위치를 보여준다.
                width: progress.visualPosition * parent.width
                height: parent.height
                color: "orange"
            }
            Label {
                anchors.centerIn: parent
                text : (progress.value * 100).toFixed(0) + "%"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

        }

    }

//    PropertyAnimation {
//        target: progress
//        property: "value"
//        from : 0
//        to : 1
//        duration: 10000
//        running: true
//        loops:Animation.Infinite
//    }

}
