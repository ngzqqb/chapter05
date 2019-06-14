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

        Dial {
            Layout.alignment: Qt.AlignHCenter

            Label {
                anchors.centerIn: parent
                text: parent.value.toFixed(1)
            }

        }

        Dial {
            Layout.alignment: Qt.AlignHCenter
            inputMode : Dial.Vertical

            Label {
                anchors.centerIn: parent
                text: parent.value.toFixed(1)
            }

        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }

}
