#pragma once

#include <sstd_qt_qml_quick_library.hpp>

namespace sstd{

    class FollowWindow : public QObject {
        Q_OBJECT
    private:
        Q_PROPERTY(QQuickWindow * targetWindow READ getTargetWindow WRITE setTargetWindow NOTIFY targetWindowChanged)
    public:
        FollowWindow(QObject * arg);
        inline QQuickWindow * getTargetWindow() const;
        void setTargetWindow(QQuickWindow *);
        Q_SIGNAL void targetWindowChanged();
    public:
        static FollowWindow *qmlAttachedProperties(QObject *object);
    private:
        using Super = QObject;
        QQuickWindow * thisWindow{nullptr};
        QQuickWindow * thisTargetWindow{nullptr};
        void updateThisPos();
    private:
        sstd_class(FollowWindow);
    };

    inline QQuickWindow * FollowWindow::getTargetWindow() const{
        return thisTargetWindow;
    }

}/*namespace sstd*/

QML_DECLARE_TYPEINFO(sstd::FollowWindow,QML_HAS_ATTACHED_PROPERTIES)

