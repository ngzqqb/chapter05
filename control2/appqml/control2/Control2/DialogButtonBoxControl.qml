import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    id : idRoot
    RowLayout{
        anchors.fill: parent
        Button{
            id : idButton
            text: qsTr("显示对话框")
            Layout.alignment:  Qt.AlignHCenter | Qt.AlignVCenter
            onClicked: {
                idDialog.open()
            }
        }
    }

    Dialog{
        id : idDialog
        standardButtons: Dialog.NoButton
        width: idRoot.width *0.8
        height: idRoot.height * 0.8
        x : idRoot.width * 0.1
        y : idRoot.height * 0.1
        modal: true
        onAccepted: {
            idButton.text = qsTr("确定")
        }
        onRejected: {
            idButton.text = qsTr("取消")
        }

        contentItem: Rectangle{
            color: "yellow"
        }

        footer : DialogButtonBox {
            Button {
                text: qsTr("确定")
                DialogButtonBox.buttonRole: DialogButtonBox.AcceptRole
            }
            Button {
                text: qsTr("取消")
                DialogButtonBox.buttonRole: DialogButtonBox.RejectRole
            }
        }

    }

}
