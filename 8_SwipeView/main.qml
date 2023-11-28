import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("SwipeView_test")

    SwipeView {
        id: view
        currentIndex: 1
        anchors.fill: parent
        orientation: "Vertical"
        Item {
            Rectangle {
                id: firstPage
                anchors.fill: parent
//                color: "red"
                ContentBlocks{
                    anchors.top: title.top
                    width: parent.width
                    height: parent.height
                }
            }
        }
        Item {
            Rectangle{
                id: secondPage
                anchors.fill: parent
//                color: "yellow"
                ContentBlocks{
                    anchors.centerIn: parent
                    width: parent.width
                    height: parent.height
                }
            }
        }
        Item {
            Rectangle {
                id:thirdPage
                anchors.fill: parent
//                color: "green"
                ContentBlocks{
                    anchors.centerIn: parent
                    width: parent.width
                    height: parent.height
                }
            }
        }
    }
//    PageIndicator {
//        id: indicator
//        count: view.count
//        currentIndex: view.currentIndex
//        anchors.centerIn: view
//        anchors.horizontalCenter: parent.horizontalCenter
//        rotation: 90
//    }
}

