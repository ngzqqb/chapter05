import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    TextField{
        text: qsTr("测试文本")
    }

    TextField{
        x : 20
        y : 36
        text: qsTr("测试文本")
    }

    TextField{
        x : 40
        y : 72
        text: qsTr("测试文本")
    }

    Rectangle{
        parent: Overlay.overlay
        anchors.fill: parent
        color: Qt.rgba(1,0,0,0.5)

        Rectangle{
            width: parent.width * 0.8
            height: parent.height * 0.8
            anchors.centerIn: parent

            color: "yellow"
            border.color: "black"
            border.width: 3
            /*如果没有此MouseArea，则父获得鼠标事件*/
            MouseArea{
                anchors.fill: parent
                enabled: true
                hoverEnabled: true
            }

        }

    }

}

