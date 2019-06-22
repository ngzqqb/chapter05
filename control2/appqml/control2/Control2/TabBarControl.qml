import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{
    header: TabBar{
         TabButton {
             text: qsTr("Home")
         }
         TabButton {
             text: qsTr("Discover")
         }
         TabButton {
             text: qsTr("Activity")
         }
    }
}
