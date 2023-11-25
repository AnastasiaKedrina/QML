import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2
Page{
    id:root
    property alias backgroundColor:back_fon.color
    property alias buttonText_1:button_nav_1.text
    property alias buttonText_2:button_nav_2.text
    signal buttonClicked_1();
    signal buttonClicked_2();
    background: Rectangle{
        id:back_fon
    }
    Button {
        id:button_nav_1
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.buttonClicked_1()
        }
    }
    Button {
        id:button_nav_2
        anchors.right: button_nav_1.left
        anchors.bottom: parent.bottom
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.buttonClicked_2()
        }
    }
}
