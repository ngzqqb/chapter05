import QtQuick 2.12
import QtQuick.Controls 2.12

PrivateBasic{

    Item{

        width: parent.width
        height: parent.height


        MouseArea{

            anchors.fill: parent
            acceptedButtons: Qt.RightButton
            onClicked: {
                idMenu.popup()
            }

        }

        Menu{
            id : idMenu
            MenuItem { text: "A" }
            MenuItem { text: "B" }
            MenuItem { text: "C" }
            Menu{
                title: "R"
                MenuItem { text: "A" }
                MenuItem { text: "B" }
                MenuItem { text: "C" }
            }
        }

        TextField{
            text: qsTr("测试文本")
            anchors.centerIn: parent
        }

    }



}







