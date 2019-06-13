import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    Rectangle{
        parent: Overlay.overlay

        width: parent.width * 0.8
        height: parent.height * 0.8
        anchors.centerIn: parent

        color: "yellow"
        border.color: "black"
        border.width: 3

    }

}

