import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

PrivateBasic{

    ScrollView {
        anchors.fill: parent
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff

        TextArea{
            id : idTextArea
            wrapMode : TextEdit.WordWrap
            readOnly: false
            selectByMouse: true
            focus: true
            text: "Lorem Ipsum，也称乱数假文或者哑元文本，
是印刷及排版领域所常用的虚拟文字。
由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，
Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。
它不仅延续了五个世纪，还通过了电子排版的挑战，
其雏形却依然保存至今。
在1960年代，”Leatraset”公司发布了印刷着Lorem Ipsum段落的纸张，
从而广泛普及了它的使用。
最近，计算机桌面出版软件”Aldus PageMaker”也通过同样的方式使
Lorem Ipsum落入大众的视野。"
            onPressed : {
                if(event.button === Qt.RightButton ) {
                    idTextAreaMenu.popup()
                }
            }
            Menu{
                id : idTextAreaMenu
                MenuItem{text: "A"}
                MenuItem{text: "B"}
                MenuItem{text: "C"}
            }
        }
    }
}



