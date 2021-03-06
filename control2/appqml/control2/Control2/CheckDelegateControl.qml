﻿import QtQuick 2.13
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
                delegate: CheckDelegate {
                    id : idCheckDelegate
                    text: qsTr( "Item " ) + (index + 1)
                    width: parent.width
                    checked: ( index ) & 1 ;
                    onClicked: {
                        idLabel.text = idCheckDelegate.text + " "
                                + idCheckDelegate.checked ;
                    }
                }
            }
        }
    }
}
