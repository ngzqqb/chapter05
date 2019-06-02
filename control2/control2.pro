# control2/control2.pro

TEMPLATE = app

CONFIG(debug,debug|release){
    TARGET = control2_debug
}else{
    TARGET = control2
}

SOURCES += $$PWD/main.cpp

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
QMLSOURCES += $$PWD/appqml/control2/Control2/FramelessWindow.qml
QMLSOURCES += $$PWD/appqml/control2/Control2/OnlyCloseButtonWindow.qml

lupdate_only{
    SOURCES += $$QMLSOURCES
}

DISTFILES += $$QMLSOURCES
QML_IMPORT_PATH += $${SSTD_LIBRARY_OUTPUT_PATH}

#/*endl_input_of_latex_for_clanguage_lick*/"
