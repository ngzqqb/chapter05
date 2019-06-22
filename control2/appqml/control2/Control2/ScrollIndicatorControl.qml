import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    Flickable{
        width: parent.width
        height: parent.height

        contentWidth: idImage.width
        contentHeight: idImage.height

        ScrollIndicator.vertical: ScrollIndicator {
        }
        ScrollIndicator.horizontal: ScrollIndicator {
        }

        Image {
            id : idImage
            source: "LargeImage.jpg"
            width: sourceSize.width
            height: sourceSize.height
        }
    }

}
