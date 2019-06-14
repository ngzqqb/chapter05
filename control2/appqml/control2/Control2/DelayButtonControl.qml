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

        Label{
            id : idLabel
            text: qsTr("未定义")
            Layout.alignment: Qt.AlignHCenter
        }

        DelayButton {
            id : idDelayButton
            Layout.preferredWidth: 128
            Layout.alignment: Qt.AlignHCenter
            text: qsTr("测试")
            delay: 3000
            onActivated: {
                idLabel.text = qsTr("激活")
            }
            onDownChanged: {
                if( down ){
                    idLabel.text = Qt.binding( function(){
                        return idDelayButton.progress.toFixed(1) ;
                    } )
                }else{
                    idLabel.text = qsTr("未定义")
                }
            }
        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }

}





