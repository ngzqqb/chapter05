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

        CheckBox {
            Layout.alignment: Qt.AlignHCenter
            text: qsTr("TestCheckBox")
        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }

}




