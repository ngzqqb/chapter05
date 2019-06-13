import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    Item {
        width: parent.width
        height: parent.height

        Button{
            text: idDrawer.opened ? qsTr("关闭") : qsTr("打开")
            anchors.centerIn: parent
            onClicked: {
                if(idDrawer.opened){
                    idDrawer.close()
                }else{
                    idDrawer.open()
                }
            }
        }

        Drawer{

            id : idDrawer
            edge: Qt.LeftEdge
            height: parent.height
            width: 128

            Rectangle{
                anchors.fill: parent
                color: "yellow"
                border.color: "red"
                border.width: 3
            }

        }

    }

}

