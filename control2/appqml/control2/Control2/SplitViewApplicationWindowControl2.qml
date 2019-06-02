import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 1.4 as Control1

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
/*end:import*/

PrivateBasic{

    menuBar: MenuBar {

        Menu {
            title: qsTr("File")

            MenuItem {
                text: qsTr("A")
            }

            MenuItem {
                text: qsTr("B")
            }

        }

        Menu {
            title: qsTr("&Edit")

            MenuItem {
                text: qsTr("C")
            }

            MenuItem {
                text: qsTr("D")
            }

        }

        Menu {
            title: qsTr("&View")

            MenuItem {
                text: qsTr("E")
            }

            MenuItem {
                text: qsTr("F")
            }

        }

        Menu {
            id: helpMenu
            title: qsTr("&Help")

            MenuItem {
                text: qsTr("G")
            }

        }

    }

    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {text: qsTr("A")}
            ToolButton {text: qsTr("B")}
            ToolButton {text: qsTr("C")}
            Item{
                Layout.fillWidth: true
            }
        }
    }

    id : idWindow
    property int createIndex : 1 ;

    Control1.SplitView{
        anchors.fill: parent
        orientation:  Qt.Vertical
        handleDelegate : Rectangle {
            width: 1
            height: 1
            color: GlobalAppData.accent
        }
        Control1.SplitView{
            handleDelegate : Rectangle {
                width: 1
                height: 1
                color: GlobalAppData.accent
            }
            Rectangle{
                color: "red"
                Layout.minimumWidth : 32
            }
            Rectangle{
                color: "blue"
                Layout.minimumWidth : 32
            }
            Rectangle{
                color: "green"
                Layout.minimumWidth : 32
            }
            Layout.minimumWidth : 32
            Layout.minimumHeight: 32
        }
        Rectangle{
            color: "yellow"
            Layout.minimumWidth : 32
            Layout.minimumHeight: 32
        }
    }

    footer: RowLayout{
        Label{text: "SplitView"}
    }

}

/*endl_input_of_latex_for_clanguage_lick*/















