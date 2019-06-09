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

    PrivateBasic{
        FollowWindow.targetWindow : idRoot;
        FollowWindow.bottomMargin: -2;
        FollowWindow.leftMargin:   1 ;
        FollowWindow.rightMargin: 256 - idRoot.width ;
        FollowWindow.topMargin: 2;
        flags: Qt.FramelessWindowHint | Qt.ToolTip ;
        visible: idRoot.active
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
        FollowWindow.rightMargin: -1;
        FollowWindow.topMargin: 2;
        flags: Qt.FramelessWindowHint | Qt.ToolTip;
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
            }
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"green"
            }
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: GlobalAppData.isDark? "darkblue" : "lightblue"
                Label{
                    anchors.centerIn: parent
                    text: "X"
                }
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
        FollowWindow.bottomMargin: 0 ;
        FollowWindow.leftMargin:   2 ;
        FollowWindow.rightMargin: -2 ;
        FollowWindow.topMargin: 2;
        flags: Qt.FramelessWindowHint | Qt.WindowTransparentForInput ;
        color: Qt.rgba(0,0,0,0)
        id : idTitleWindow
        RowLayout {
            width : idTitleWindow.width
            height: idTitleWindow.height
            spacing: 0
            Rectangle{
                visible: idRoot.active
                Layout.fillHeight: true
                Layout.fillWidth: true
                gradient: Gradient {
                    GradientStop { position: 0.0; color:  GlobalAppData.isDark ?
                                                              Qt.lighter( GlobalAppData.background ):
                    Qt.darker( GlobalAppData.background )}
                    GradientStop { position: 1.0; color: GlobalAppData.background }
                }
            }
        }
    }

}

