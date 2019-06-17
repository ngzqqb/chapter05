import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    RowLayout{
        anchors.fill: parent
        Label{
            Layout.alignment:  Qt.AlignHCenter | Qt.AlignVCenter
            id : idLabel
            text: qsTr("None")
        }
    }

    Action{
        id : idActionA
        text:  qsTr("A")
        onTriggered: {
            idLabel.text = qsTr("Action A")
        }
    }

    Action{
        id : idActionB
        text:  qsTr("B")
        onTriggered: {
            idLabel.text = qsTr("Action B")
        }
    }

    Action{
        id : idActionC
        text:  qsTr("C")
        onTriggered: {
            idLabel.text = qsTr("Action C")
        }
    }

    menuBar: MenuBar {

        Menu{
            title: qsTr("一")
            MenuItem{
                action:idActionA
            }
            MenuItem{
                action:idActionB
            }
            MenuItem{
                action:idActionC
            }
        }

        Menu{
            title: qsTr("二")
            MenuItem{
                action:idActionA
            }
            MenuItem{
                action:idActionB
            }
            MenuItem{
                action:idActionC
            }
        }

        Menu{
            title: qsTr("三")
            MenuItem{
                action:idActionA
            }
            MenuItem{
                action:idActionB
            }
            MenuItem{
                action:idActionC
            }
        }

    }

    header : ToolBar{
        RowLayout{
            ToolButton{
                action:idActionA
            }
            ToolButton{
                action:idActionB
            }
            ToolButton{
                action:idActionC
            }
        }
    }

}
