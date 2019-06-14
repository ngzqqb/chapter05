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

        RangeSlider {
            id : idSlider
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: idRoot.width * 0.8
            from: 1
            to: 100
            first.value: 40
            second.value: 60

            ToolTip {
                id : idFirstTooTip
                parent: idSlider.first.handle
                visible: idSlider.first.pressed
                text: idSlider.first.value.toFixed(1)
                Component.onDestruction: {
                    idFirstTooTip.visible = true
                }
            }

            ToolTip {
                id : idSecondTooTip
                parent: idSlider.second.handle
                visible: idSlider.second.pressed
                text: idSlider.second.value.toFixed(1)
                Component.onDestruction: {
                    idSecondTooTip.visible = true
                }
            }

        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }

}
