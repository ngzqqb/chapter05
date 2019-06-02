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

    id : idWindow
    property int createIndex : 1 ;

    ScrollView {

        anchors.fill: parent
        id : idContent
        clip: true

        Image{
            id : idImage
            source: "LargeImage.jpg"
        }

    }

    footer: RowLayout{
        Label{ text: idImage.source }
    }

}

/*endl_input_of_latex_for_clanguage_lick*/















