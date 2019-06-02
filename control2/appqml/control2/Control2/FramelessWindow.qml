import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    id : idRoot
    flags: Qt.FramelessWindowHint

    RowLayout{

        Item{
            Layout.fillWidth: true
        }

        ToolButton{
            text: "X"
            onClicked: {
                idRoot.close();
            }
        }

    }

}/*PrivateBasic*/










