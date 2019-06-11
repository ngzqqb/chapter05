import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12
import sstd.follow.window 1.0

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
/*end:import*/

PrivateBasic{

    id: idRoot
    minimumWidth: 256+128+64
    minimumHeight: 128
    flags: Qt.WindowMaximizeButtonHint | Qt.CustomizeWindowHint | Qt.Dialog | Qt.WindowTitleHint
    property string titleWhenUnActive: "FollowWindow.qml"

    onActiveChanged: {
        if(idRoot.active){
            idRoot.title = " "
        }else{
            idRoot.title = idRoot.titleWhenUnActive;
        }
    }

    Item{
        width: idRoot.width
        height: idRoot.height
        TextField {
            text: qsTr("测试")
            anchors.centerIn: parent
        }
    }

    PrivateBasic{
        FollowWindow.targetWindow : idRoot;
        FollowWindow.bottomMargin: -2;
        FollowWindow.leftMargin:   1 ;
        FollowWindow.rightMargin: 256 - idRoot.width ;
        FollowWindow.topMargin: 2;
        flags: Qt.FramelessWindowHint | Qt.ToolTip  | Qt.WindowDoesNotAcceptFocus | Qt.BypassWindowManagerHint ;
        visible: idRoot.active
        id : idTitleWindowLeft
        RowLayout {
            width : idTitleWindowLeft.width
            height: idTitleWindowLeft.height
            spacing: 0
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.color: "black"
                color:"red"
            }
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"green"
                border.color: "black"
            }
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"blue"
                border.color: "black"
            }
        }
    }

    PrivateBasic{
        FollowWindow.targetWindow : idRoot;
        FollowWindow.bottomMargin: -2;
        FollowWindow.leftMargin: idRoot.width - 128 ;
        FollowWindow.rightMargin: -1;
        FollowWindow.topMargin: 2;
        flags: Qt.FramelessWindowHint | Qt.ToolTip | Qt.WindowDoesNotAcceptFocus | Qt.BypassWindowManagerHint ;
        id : idTitleWindowRight
        visible: idRoot.active
        RowLayout {
            width : idTitleWindowRight.width
            height: idTitleWindowRight.height
            spacing: 0
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"red"
                border.color: "black"
            }
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"green"
                border.color: "black"
            }
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: GlobalAppData.isDark? "darkblue" : "lightblue"
                border.color: "black"
                Label{
                    anchors.centerIn: parent
                    text: "X"
                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        idRoot.close();
                    }
                    id : idCloseButtonMouseArea
                }
            }
        }
    }


}

