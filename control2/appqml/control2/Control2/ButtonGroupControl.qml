import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

   id : idRoot

   ColumnLayout{
       anchors.fill: parent

       Item{
           Layout.fillHeight: true
           Layout.fillWidth: true
       }

       ButtonGroup{
           id : idButtonGroup1

       }

       RadioButton{
           checked: true
           text: qsTr("A")
           ButtonGroup.group: idButtonGroup1
            Layout.alignment: Qt.AlignHCenter
       }
       RadioButton{
           ButtonGroup.group: idButtonGroup1
           text: qsTr("B")
            Layout.alignment: Qt.AlignHCenter
       }
       RadioButton{
            ButtonGroup.group: idButtonGroup1
            text: qsTr("C")
             Layout.alignment: Qt.AlignHCenter
       }


       ButtonGroup{
           id : idButtonGroup2
           exclusive:false
           checkedButton : idCheckBox
           checkState: idCheckBox.checkState
       }

       CheckBox{
           id : idCheckBox
           checkState: idButtonGroup2.checkState
           text: qsTr("All")
       }
       CheckBox{
           ButtonGroup.group: idButtonGroup2
           text: qsTr("D")
           leftPadding: indicator.width
       }
       CheckBox{
           ButtonGroup.group: idButtonGroup2
           text: qsTr("E")
           leftPadding: indicator.width
       }

       Item{
           Layout.fillHeight: true
           Layout.fillWidth: true
       }

   }



}
