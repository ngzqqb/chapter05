import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12
import sstd.follow.window 1.0

PrivateBasic{

    id: idRoot
    minimumWidth: 256+128+64
    minimumHeight: 128
    flags: Qt.WindowMaximizeButtonHint | Qt.CustomizeWindowHint | Qt.Dialog | Qt.WindowTitleHint

    PrivateBasic{
        FollowWindow.targetWindow : idRoot;
        FollowWindow.bottomMargin: -2;
        FollowWindow.leftMargin:   0 ;
        FollowWindow.rightMargin: 256 - idRoot.width ;
        FollowWindow.topMargin: 2;
        flags: Qt.FramelessWindowHint | Qt.ToolTip ;
        id : idTitleWindowLeft
        RowLayout {
            width : idTitleWindowLeft.width
            height: idTitleWindowLeft.height
            spacing: 0
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"red"
            }
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"green"
            }
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"blue"
            }
        }
    }

    PrivateBasic{
        FollowWindow.targetWindow : idRoot;
        FollowWindow.bottomMargin: -2;
        FollowWindow.leftMargin: idRoot.width - 128 ;
        FollowWindow.rightMargin: 0;
        FollowWindow.topMargin: 2;
        flags: Qt.FramelessWindowHint | Qt.ToolTip;
        id : idTitleWindowRight
        RowLayout {
            width : idTitleWindowRight.width
            height: idTitleWindowRight.height
            spacing: 0
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"red"
            }
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"green"
            }
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"blue"
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        idRoot.close();
                    }
                }
            }
        }
    }

    PrivateBasic{
        FollowWindow.targetWindow : idRoot;
        FollowWindow.bottomMargin: -2;
        FollowWindow.leftMargin:   2 ;
        FollowWindow.rightMargin: -2 ;
        FollowWindow.topMargin: 2;
        flags: Qt.FramelessWindowHint | Qt.WindowTransparentForInput ;
        id : idTitleWindow
        RowLayout {
            width : idTitleWindow.width
            height: idTitleWindow.height
            spacing: 0
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"red"
            }
        }
    }


}

