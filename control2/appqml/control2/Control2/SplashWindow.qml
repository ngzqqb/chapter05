import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    id : idRoot
    flags: Qt.FramelessWindowHint | Qt.SplashScreen
    color: "transparent"

    Item{

        width: idRoot.width   ;
        height: idRoot.height ;

        Image{
            id : idImage
            source: "LargeImage"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }

        ProgressBar{
            anchors.bottom: idImage.bottom
            anchors.horizontalCenter: idImage.horizontalCenter
            width:  idImage.paintedWidth
            value: Math.min( 1 , idTimer.progress / 100.0 )
        }

    }

    Timer{
        id : idTimer
        property int progress : 0
        interval: 500;
        running: true;
        repeat: true ;
        onTriggered: {
            progress += 10;
            if( progress > 100 ){
                idTimer.stop();
                idRoot.close();
            }
        }
    }

}/*PrivateBasic*/

/*endl_input_of_latex_for_clanguage_lick*/
// https://www.cnblogs.com/mcumagic/p/5806153.html
//






