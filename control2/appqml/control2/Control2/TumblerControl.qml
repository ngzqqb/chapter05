import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    id : idRoot

    Item{

        width: parent.width
        height: parent.height

        Tumbler{
            id : idTumbler
            model: 128
            visibleItemCount : 7
            anchors.centerIn: parent
            height: parent.height
        }

        Label{
            anchors.verticalCenter: idTumbler.verticalCenter
            anchors.right: idTumbler.left
            text: String( idTumbler.currentIndex )
        }

        Label{
            anchors.verticalCenter: idTumbler.verticalCenter
            anchors.left: idTumbler.right
            text: String( idTumbler.currentIndex )
        }

    }

}/*PrivateBasic*/

/*endl_input_of_latex_for_clanguage_lick*/
// https://forum.qt.io/topic/93444/qml-only-display-close-windows-hint/9
