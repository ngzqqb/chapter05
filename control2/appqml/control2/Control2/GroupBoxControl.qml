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

        GroupBox {
            Layout.alignment: Qt.AlignHCenter
            label: CheckBox {
                id: idCheckBox
                checked: true
                text: qsTr("Synchronize")
            }
            ColumnLayout {
                anchors.fill: parent
                enabled: idCheckBox.checked;
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
