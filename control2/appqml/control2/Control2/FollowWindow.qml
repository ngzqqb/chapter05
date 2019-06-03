import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import sstd.follow.window 1.0

PrivateBasic{

    id: idRoot
    minimumWidth: 360
    minimumHeight: 128

    PrivateBasic{
        FollowWindow.targetWindow : idRoot;
        FollowWindow.bottomMargin: -2;
        FollowWindow.leftMargin: idRoot.visibility == 4 ? 2 : 8;
        FollowWindow.rightMargin: -200;
        FollowWindow.topMargin: 2;
        flags: Qt.FramelessWindowHint;
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

}

