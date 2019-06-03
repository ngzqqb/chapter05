import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12
import sstd.follow.window 1.0

PrivateBasic{

    id: idRoot
    minimumWidth: 256+128+64
    minimumHeight: 128

    PrivateBasic{
        FollowWindow.targetWindow : idRoot;
        FollowWindow.bottomMargin: -2;
        FollowWindow.leftMargin:   0 ;
        FollowWindow.rightMargin: 256 - idRoot.width ;
        FollowWindow.topMargin: 2;
        flags: Qt.FramelessWindowHint;
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
        flags: Qt.FramelessWindowHint;
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

}

