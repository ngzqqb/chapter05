# control2/control2.pro

TEMPLATE = app

CONFIG(debug,debug|release){
    TARGET = control2_debug
}else{
    TARGET = control2
}

SOURCES += $$PWD/main.cpp

SOURCES += $$PWD/ApplyFrame.cpp
HEADERS += $$PWD/ApplyFrame.hpp

SOURCES += $$PWD/FollowWindow.cpp
HEADERS += $$PWD/FollowWindow.hpp

include($$PWD/../../sstd_library/sstd_library.pri)
include($$PWD/../../sstd_qt_qml_quick_library/sstd_qt_qml_quick_library.pri)
include($$PWD/../../sstd_library/add_vc_debug_console.pri)

DESTDIR = $${SSTD_LIBRARY_OUTPUT_PATH}

isEmpty(QMAKE_POST_LINK){
    QMAKE_POST_LINK += $${SSTD_LIBRARY_OUTPUT_PATH}/sstd_copy_qml $${PWD} $${PWD} skip
}else{
    QMAKE_POST_LINK += $$escape_expand(\\n\\t)$${SSTD_LIBRARY_OUTPUT_PATH}/sstd_copy_qml $${PWD} $${PWD} skip
}

CONFIG(debug,debug|release){
    DEFINES += CURRENT_DEBUG_PATH=\\\"$$PWD\\\"
}else{
    QMAKE_POST_LINK += $$escape_expand(\\n\\t)$${DESTDIR}/sstd_copy_qml $${PWD}/appqml $${DESTDIR}/appqml release
    export(QMAKE_POST_LINK)
}

QMLSOURCES += $$PWD/appqml/control2/main.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/PrivateBasic.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/SwipeViewApplicationWindowControl2.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/ScrollViewApplicationWindowControl2.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/StackViewApplicationWindowControl2.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/PrivateStackView.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/SplitViewApplicationWindowControl2.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/OnlyCloseButtonWindow.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/FramelessWindow.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/FullDefinedFramelessWindow.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/FollowWindow.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/NoneButtonWindow.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/SplashWindow.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/TumblerControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/ToolTipControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/MenuControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/OverlayWindow.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/DrawerControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/TextAreaControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/TextFieldControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/RangeSliderControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/SliderControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/BusyIndicatorControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/ProgressBarControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/DialControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/ButtonControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/DelayButtonControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/ToolBarControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/RoundButtonControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/ScrollIndicatorControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/ScrollBarControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/ComboBoxControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/LabelControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/CheckBoxControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/ButtonGroupControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/SwitchControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/SpinBoxControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/RadioButtonControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/PageIndicatorControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/TabBarControl.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/MenuBarControl.qml

lupdate_only{
    SOURCES += $$QMLSOURCES
}

DISTFILES += $$QMLSOURCES
QML_IMPORT_PATH += $${SSTD_LIBRARY_OUTPUT_PATH}

#/*endl_input_of_latex_for_clanguage_lick*/"
