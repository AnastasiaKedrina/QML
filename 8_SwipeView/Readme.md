### QML_8. Swipe_View

https://github.com/AnastasiaKedrina/QML/assets/113825953/22a1e552-fa12-4697-b8fd-dfdcf07ba498

Main.qml
```
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


```


Компонент ContentBlocks.qml для горизонтальной прокрутки
```
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
```

