import QtQuick 2.12
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.12

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

    SplitView{
        anchors.fill: parent
        orientation:  Qt.Vertical
        SplitView{
            Rectangle{
                color: "red"
                SplitView.preferredWidth: 32
            }
            Rectangle{
                color: "blue"
                SplitView.minimumWidth : 32
                SplitView.fillWidth: true
            }
            Rectangle{
                color: "green"
                SplitView.preferredWidth: 32
            }
            SplitView.minimumWidth : 32
            SplitView.minimumHeight: 32
            SplitView.preferredHeight: 128
        }
        Rectangle{
            color: "yellow"
            SplitView.preferredWidth: 32
            SplitView.preferredHeight: 16
        }
    }

    footer: RowLayout{
        Label{text: "SplitView"}
    }

}

/*endl_input_of_latex_for_clanguage_lick*/
