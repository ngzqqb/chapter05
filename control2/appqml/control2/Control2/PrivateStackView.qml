import QtQuick 2.12
import QtQuick.Controls 2.12

Item{

    property var window: null

    Label{
        id : idLabel
        anchors.centerIn: parent
        Component.onCompleted: {
            var varValue = window.createIndex ++;
            text = String( varValue );
        }
    }

    Component.onDestruction: {
        --window.createIndex ;
        /*begin:debug*/
        console.log( "WindowCreateIndex %1 ".arg(window.createIndex) );
        /*end:debug*/
    }

}





