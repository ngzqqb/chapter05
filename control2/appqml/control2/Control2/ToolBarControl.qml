import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{
    header: ToolBar{
        RowLayout{
            anchors.fill: parent
            ToolButton{ text: qsTr("A") }
            ToolButton{ text: qsTr("B") }
            ToolButton{ text: qsTr("C") }
            ToolSeparator{}
            ToolButton{ text: qsTr("D") }
            ToolButton{ text: qsTr("E") }
            ToolSeparator{}
            ToolButton{ text: qsTr("F") }
        }
    }
}
