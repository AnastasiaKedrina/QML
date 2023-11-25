import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5


Window {
    property int winWidth:360
    property int winHeight:640
    width: winWidth
    height: winHeight
    minimumWidth: winWidth
    minimumHeight: winHeight
    visible: true
    title: qsTr("List")

    Page{
        id:page
        anchors.fill:parent

        Content {}

        footer: PageFooter {
            onNewMessage: {
                //Append new message
                var newMsg = {};
                newMsg.message = msg;
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }
    }
}
