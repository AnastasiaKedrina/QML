import QtQuick 2.15

Item {
    anchors.fill:parent

    Rectangle {
        anchors.fill:parent
        anchors.topMargin: 50

        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 0.33; color: "yellow" }
            GradientStop { position: 1.0; color: "green" }
        }

        ListModel{
            id:my_model
            ListElement{ message:"Hello!"; time:"11:09"}
            ListElement{ message:"How are you?"; time:"11:10"}
        }
        Component{
            id:my_delegate
            MyDelegate{
                message:model.message
                time:model.time
                width:200
                height:50
                //anchors.horizontalCenter: parent.horizontalCenter
                anchors.left:parent.left
                anchors.margins: 20
            }
        }
        ListView{
            id:my_list
            anchors.fill:parent
            spacing: 10
            model:my_model
            delegate:my_delegate
        }
    }
}
