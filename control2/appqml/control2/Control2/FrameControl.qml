import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{


    id : idRoot
    ColumnLayout{
        anchors.fill: parent

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Frame {
            Layout.alignment: Qt.AlignHCenter
            ColumnLayout {
                anchors.fill: parent
                CheckBox { text: qsTr("E-mail") }
                CheckBox { text: qsTr("Calendar") }
                CheckBox { text: qsTr("Contacts") }
            }
        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }


}
