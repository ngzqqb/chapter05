import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
/*end:import*/

PrivateBasic{

    id : idRoot
    ColumnLayout{
        anchors.fill: parent

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TextField{
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth:idRoot.width*0.8
            placeholderText: qsTr("placeholderText")
            readOnly: false
            focus: true
        }

        TextField{
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth:idRoot.width*0.8
            text: "12345678"
            readOnly: false
            echoMode :TextInput.Password
            focus: true
        }

        TextField{
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth:idRoot.width*0.8
            readOnly: false
            focus: true
            text: "10"
            color : acceptableInput? GlobalAppData.foreground :
                                     GlobalAppData.color(GlobalAppData.Red ,
                                                         GlobalAppData.isDark? GlobalAppData.Shade300 :
                                                                               GlobalAppData.Shade800 )
            validator: IntValidator{
                bottom: 0;
                top: 31;
            }
        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }

}



