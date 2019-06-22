import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    ColumnLayout{
        anchors.fill: parent

        ListView {
            id : idListView
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: 8
            snapMode: ListView.SnapOneItem
            orientation:ListView.Horizontal
            highlightRangeMode: ListView.StrictlyEnforceRange
            delegate: Page{
                width: idListView.width
                height: idListView.height
                Label{
                    text: "A" + index
                    anchors.centerIn: parent
                }
            }
        }

        PageIndicator{
            id : idPageIndicator
            Layout.alignment: Qt.AlignHCenter
            count : idListView.count
            currentIndex: idListView.currentIndex
        }

    }

}

/*endl_input_of_latex_for_clanguage_lick*/
// https://blog.csdn.net/luoyayun361/article/details/83373805
