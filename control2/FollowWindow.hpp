#pragma once

#include <sstd_qt_qml_quick_library.hpp>

namespace sstd {

    class FollowWindow : public QObject {
        Q_OBJECT
    private:
        Q_PROPERTY(QQuickWindow * targetWindow READ getTargetWindow WRITE setTargetWindow NOTIFY targetWindowChanged)
    private:
        Q_PROPERTY(qreal leftMargin READ getLeftMargin WRITE setLeftMargin NOTIFY leftMarginChanged)
    private:
        Q_PROPERTY(qreal rightMargin READ getRightMargin WRITE setRightMargin NOTIFY rightMarginChanged)
    private:
        Q_PROPERTY(qreal topMargin READ getTopMargin WRITE setTopMargin NOTIFY topMarginChanged)
    private:
        Q_PROPERTY(qreal bottomMargin READ getBottomMargin WRITE setBottomMargin NOTIFY bottomMarginChanged)
    public:
        FollowWindow(QObject * arg);
        inline QQuickWindow * getTargetWindow() const;
        void setTargetWindow(QQuickWindow *);
        Q_SIGNAL void targetWindowChanged();
        inline qreal getLeftMargin() const;
        inline qreal getRightMargin() const;
        inline qreal getTopMargin() const;
        inline qreal getBottomMargin() const;
        void setLeftMargin(const qreal &);
        void setRightMargin(const qreal &);
        void setTopMargin(const qreal &);
        void setBottomMargin(const qreal &);
        Q_SIGNAL void leftMarginChanged();
        Q_SIGNAL void rightMarginChanged();
        Q_SIGNAL void topMarginChanged();
        Q_SIGNAL void bottomMarginChanged();
    public:
        static FollowWindow *qmlAttachedProperties(QObject *object);
    private:
        using Super = QObject;
        QQuickWindow * thisWindow{ nullptr };
        QQuickWindow * thisTargetWindow{ nullptr };
        qreal thisLeftMargin{ 0 };
        qreal thisRightMargin{ 0 };
        qreal thisTopMargin{ 0 };
        qreal thisBottomMargin{ 0 };
        int thisUpdateThisPosCount{ 0 };
        void updateThisPos();
        void tryUpdateThisPos();
    private:
        sstd_class(FollowWindow);
    };

    inline QQuickWindow * FollowWindow::getTargetWindow() const {
        return thisTargetWindow;
    }

    inline qreal FollowWindow::getLeftMargin() const {
        return thisLeftMargin;
    }

    inline qreal FollowWindow::getRightMargin() const {
        return thisRightMargin;
    }

    inline qreal FollowWindow::getTopMargin() const {
        return thisTopMargin;
    }

    inline qreal FollowWindow::getBottomMargin() const {
        return thisBottomMargin;
    }

}/*namespace sstd*/

QML_DECLARE_TYPEINFO(sstd::FollowWindow, QML_HAS_ATTACHED_PROPERTIES)

