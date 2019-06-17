import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{
    menuBar: MenuBar {

        Menu{
            id : idMenu1
            title: "1"
            MenuItem { text: "A" }
            MenuItem { text: "B" }
            MenuSeparator{}
            MenuItem { text: "C" }
            Menu{
                title: "R"
                MenuItem { text: "A" }
                MenuItem { text: "B" }
                MenuItem { text: "C" }
            }
        }

        Menu{
            id : idMenu2
            title: "2"
            MenuItem { text: "A" }
            MenuSeparator{}
            MenuItem { text: "B" }
            MenuItem { text: "C" }
            Menu{
                title: "R"
                MenuItem { text: "A" }
                MenuItem { text: "B" }
                MenuItem { text: "C" }
            }
        }

    }
}
