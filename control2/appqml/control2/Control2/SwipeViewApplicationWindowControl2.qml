import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

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

    SwipeView {

        anchors.fill: parent
        id : idContent

        Item{
            Label {
                anchors.centerIn: parent
                text: qsTr("1")
            }
        }

        Item{
            Label {
                anchors.centerIn: parent
                text: qsTr("2")
            }
        }

        Item{
            Label {
                anchors.centerIn: parent
                text: qsTr("3")
            }
        }

    }

    footer: TabBar {
        width: parent.width
        TabButton {
            text: qsTr("P1")
            onClicked: {
                idContent.currentIndex = 0
            }
        }
        TabButton {
            text: qsTr("P2")
            onClicked: {
                idContent.currentIndex = 1
            }
        }
        TabButton {
            text: qsTr("P3")
            onClicked: {
                idContent.currentIndex = 2
            }
        }
    }

}

/*endl_input_of_latex_for_clanguage_lick*/
