﻿import QtQuick 2.12
import QtQuick.Controls 2.12

Item{

    property alias text: idLabel.text

    Label{
        id : idLabel
        anchors.centerIn: parent
    }

}





