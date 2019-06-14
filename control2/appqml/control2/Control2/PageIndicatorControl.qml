import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    ColumnLayout{
        anchors.fill: parent

        SwipeView{
            Layout.fillHeight: true
            Layout.fillWidth: true

            Repeater{
                model: 8
                Page{
                    Label{
                        text: "A" + index
                        anchors.centerIn: parent
                    }
                }
            }

            id : idSwipeView
        }

        PageIndicator{
            id : idPageIndicator
            Layout.alignment: Qt.AlignHCenter
            count : idSwipeView.count
            currentIndex: idSwipeView.currentIndex
        }

    }

}





