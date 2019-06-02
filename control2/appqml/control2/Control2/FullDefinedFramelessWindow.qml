import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import sstd.applyframe 1.0

PrivateBasic{

    id : idRoot
    flags: Qt.FramelessWindowHint
    property var theScreen : idRoot.screen
    property real theMargin: 3

    GridLayout{

        width: parent.width
        height: parent.height

        rowSpacing: 0
        columnSpacing: 0
        rows: 3
        columns: 3

        id : idLayout

        MouseArea{
            id : idTopLeft
            Layout.preferredWidth: idRoot.theMargin
            Layout.preferredHeight: idRoot.theMargin
            cursorShape : Qt.SizeFDiagCursor
            acceptedButtons : Qt.LeftButton
            onPositionChanged: {
                ApplyFrame.applyTopLeft( idRoot , idTopLeft,mouse.x,mouse.y );
            }
        }

        MouseArea{
            id : idTop
            Layout.fillWidth: true
            Layout.preferredHeight: idRoot.theMargin
            cursorShape : Qt.SizeVerCursor
            acceptedButtons : Qt.LeftButton
            onPositionChanged: {
                ApplyFrame.applyTop( idRoot , idTop ,mouse.x,mouse.y);
            }
        }

        MouseArea{
            id : idTopRight
            Layout.preferredWidth: idRoot.theMargin
            Layout.preferredHeight: idRoot.theMargin
            cursorShape :  Qt.SizeBDiagCursor
            acceptedButtons : Qt.LeftButton
            onPositionChanged: {
                ApplyFrame.applyTopRight(idRoot , idTopRight ,mouse.x,mouse.y );
            }
        }

        MouseArea{
            id : idLeft
            Layout.fillHeight: true
            Layout.preferredWidth: idRoot.theMargin
            cursorShape : Qt.SizeHorCursor
            acceptedButtons : Qt.LeftButton
            onPositionChanged: {
                ApplyFrame.applyLeft( idRoot , idLeft ,mouse.x,mouse.y);
            }
        }

        ColumnLayout{

            Layout.fillHeight: true
            Layout.fillWidth: true

            /*标题栏*/
            RowLayout{

                width: idRoot.width - idRoot.theMargin - idRoot.theMargin
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
                            idRoot.setY( Math.max(theScreen.virtualY, idRoot.y + varDy) )
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

            /*中心内容*/
            Item{
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

        }

        MouseArea{
            id : idRight
            Layout.fillHeight: true
            Layout.preferredWidth: idRoot.theMargin
            cursorShape : Qt.SizeHorCursor
            acceptedButtons : Qt.LeftButton
            onPositionChanged: {
                ApplyFrame.applyRight( idRoot , idRight,mouse.x,mouse.y );
            }
        }

        MouseArea{
            id: idBottomLeft
            Layout.preferredWidth: idRoot.theMargin
            Layout.preferredHeight: idRoot.theMargin
            cursorShape :  Qt.SizeBDiagCursor
            acceptedButtons : Qt.LeftButton
            onPositionChanged: {
                ApplyFrame.applyBottomLeft( idRoot ,idBottomLeft,mouse.x,mouse.y );
            }
        }

        MouseArea{
            id : idBottom
            Layout.fillWidth: true
            Layout.preferredHeight: idRoot.theMargin
            cursorShape : Qt.SizeVerCursor
            acceptedButtons : Qt.LeftButton
            onPositionChanged: {
                ApplyFrame.applyBottom( idRoot , idBottom,mouse.x,mouse.y );
            }
        }

        MouseArea{
            id : idBottomRight
            Layout.preferredWidth: idRoot.theMargin
            Layout.preferredHeight: idRoot.theMargin
            cursorShape : Qt.SizeFDiagCursor
            acceptedButtons : Qt.LeftButton
            onPositionChanged: {
                ApplyFrame.applyBottomRight( idRoot , idBottomRight,mouse.x,mouse.y );
            }
        }

    }



}/*PrivateBasic*/

/*endl_input_of_latex_for_clanguage_lick*/
// https://www.cnblogs.com/mcumagic/p/5806153.html
//






