import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.12

PrivateBasic{
    id : idRoot
    ColumnLayout{
        width: idRoot.width;
        height: idRoot.height;
        Label{
            id : idLabel
            Layout.fillWidth: true
        }
        ScrollView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            ListView {
                clip: true
                width: parent.width ;
                model: 20
                delegate: SwipeDelegate{
                    width: parent.width          ;
                    text: (index + 1 ) + " : " + qsTr("向左滑动出现按钮")
                    swipe.right: ToolButton {
                        anchors.right: parent.right;
                        anchors.verticalCenter: parent.verticalCenter;
                        height: parent.height      ;
                        text: "\u2713"
                        onClicked: {
                            idLabel.text = index + 1 ;
                        }
                    }
                }
            }
        }
    }
}














