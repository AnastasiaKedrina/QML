import QtQuick 2.15
import QtQuick.Controls 2.5



Rectangle{
    property alias color_1:firstPage_in.color
    property alias color_2:secondPage_in.color
    property alias color_3:thirdPage_in.color
    id:swipe_container
    color:"black"

    SwipeView {
        id: view_in
        currentIndex: 1
        anchors.fill: parent

        Item {
            Rectangle {
                id: firstPage_in
                anchors.fill: parent
                color: "lightgray"
                Text{
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 50
                    font.pixelSize: 20
                    text: "1"
                }
            }
        }
        Item {
            Rectangle{
                id: secondPage_in
                anchors.fill: parent
                color: "gray"
                Text{
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 50
                    font.pixelSize: 20
                    text: "2"
                }
            }
        }
        Item {
            Rectangle {
                id:thirdPage_in
                anchors.fill: parent
                color: "lightgray"
            }
            Text{
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.margins: 50
                font.pixelSize: 20
                text: "3"
            }
        }
    }
    PageIndicator {
        id: indicator_in
        count: view_in.count
        currentIndex: view_in.currentIndex
        anchors.bottom: view_in.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}



