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

        ProgressBar {
            Layout.preferredWidth: idRoot.width * 0.8
            Layout.alignment: Qt.AlignHCenter
            from : 0
            to : 100
            value: 0
            id : idProgressBar
            Timer{
                interval: 1200;
                running: true;
                repeat: true
                onTriggered:{
                    var varValue = idProgressBar.value + 10 ;
                    if( varValue > 100 ){
                        varValue = 0;
                    }
                    idProgressBar.value = varValue;
                }
            }
        }

        ProgressBar {
            Layout.preferredWidth: idRoot.width * 0.8
            Layout.alignment: Qt.AlignHCenter
            indeterminate : true
        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }

}
