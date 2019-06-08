import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    id : idRoot
    flags: Qt.WindowMaximizeButtonHint | Qt.CustomizeWindowHint | Qt.Dialog | Qt.WindowTitleHint

    Item{

        width: parent.width
        height: parent.height

        Button{
            text: qsTr("关闭")
            anchors.centerIn: parent
            onClicked: {
                idRoot.close();
            }
        }

    }

}/*PrivateBasic*/

/*endl_input_of_latex_for_clanguage_lick*/
// https://forum.qt.io/topic/93444/qml-only-display-close-windows-hint/9
