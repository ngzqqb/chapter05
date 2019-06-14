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

        SpinBox {
            Layout.alignment: Qt.AlignHCenter
            editable: true
            from : 0
            to : 100
            stepSize: 1
        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }

}
