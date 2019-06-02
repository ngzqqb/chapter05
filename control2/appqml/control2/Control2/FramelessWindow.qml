import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    id : idRoot
    flags: Qt.FramelessWindowHint

    RowLayout{

        width: parent.width
        height: idButton.height

        Item {
            Layout.fillWidth: true
            height: parent.height
            MouseArea {
                anchors.fill: parent
                property point clickPosition : Qt.point(0,0)
                onPositionChanged: {
                    var varDx = mouse.x - clickPosition.x;
                    var varDy = mouse.y - clickPosition.y;
                    idRoot.setX( idRoot.x + varDx )
                    idRoot.setY( idRoot.y + varDy )
                }
                onPressed: {
                    clickPosition = Qt.point( mouse.x , mouse.y )
                }
                acceptedButtons : Qt.LeftButton
            }
        }

        ToolButton{
            id : idButton
            text: "X"
            onClicked: {
                idRoot.close();
            }
        }

    }

}/*PrivateBasic*/

/*endl_input_of_latex_for_clanguage_lick*/
// https://www.cnblogs.com/mcumagic/p/5806153.html







