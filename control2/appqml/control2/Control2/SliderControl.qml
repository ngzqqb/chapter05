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

        Slider {
            id : idSlider
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: idRoot.width * 0.8
            from: 1
            to: 100
            value: 40

            ToolTip {
                id : idTooTip
                parent: idSlider.handle
                visible: idSlider.pressed
                text: idSlider.value.toFixed(1)
                Component.onDestruction: {
                    idTooTip.visible = true
                }
            }

        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }

}
