import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
/*end:import*/

PrivateBasic{

    ColumnLayout{
        anchors.fill: parent

        TextField{
            placeholderText: qsTr("placeholderText")
            readOnly: false
            focus: true
        }

        TextField{
            text: "12345678"
            readOnly: false
            echoMode :TextInput.Password
            focus: true
        }

        TextField{
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

    }

}



