import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.12

PrivateBasic{
    id : idRoot
    ColumnLayout{
        width: idRoot.width;
        height: idRoot.height;
        Label{
            id : idLabel
            Layout.fillWidth: true
        }
        ScrollView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            ListView {
                clip: true
                width: parent.width ;
                model: 20
                ButtonGroup {
                      id: idButtonGroup
                }
                delegate: RadioDelegate {
                    id : idRadioDelegate
                    text: qsTr( "Item " ) + (index + 1)
                    width: parent.width
                    checked:( index == 0 ) ;/* !!! There will be a bug when index == 19 !!! */
                    ButtonGroup.group: idButtonGroup;
                    onClicked: {
                        idLabel.text = idRadioDelegate.text + " "
                                + idRadioDelegate.checked ;
                    }
                }
            }
        }
    }
}



