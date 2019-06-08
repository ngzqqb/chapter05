import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    id : idRoot

    Item{

        width: parent.width
        height: parent.height

        ColumnLayout{
            anchors.fill: parent
            Button{
                text: qsTr( "Good!" )
                Layout.alignment: Qt.AlignHCenter
                ToolTip.text: qsTr("Good Button")
                ToolTip.visible: hovered
            }
            Slider{
                value: 0.5
                Layout.fillWidth: true
                id : idSlider
                ToolTip {
                    parent: idSlider.handle
                    visible: idSlider.hovered
                    text: idSlider.value.toFixed(1)
                    Component.onDestruction: {
                        text = ""
                        width = 1 ;
                        height = 1 ;
                        visible = true ;
                    }
                }
            }
        }

    }

}/*PrivateBasic*/

/*endl_input_of_latex_for_clanguage_lick*/
// https://forum.qt.io/topic/93444/qml-only-display-close-windows-hint/9
