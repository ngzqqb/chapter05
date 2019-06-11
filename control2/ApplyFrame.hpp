#pragma once

#include <sstd_qt_qml_quick_library.hpp>

namespace sstd {

    class ApplyFrame : public QObject {
        Q_OBJECT
    public:
        ApplyFrame();
    public:
        Q_INVOKABLE void applyTopLeft(QQuickWindow*, QQuickItem *, qreal, qreal);
        Q_INVOKABLE void applyTop(QQuickWindow*, QQuickItem *, qreal, qreal);
        Q_INVOKABLE void applyTopRight(QQuickWindow*, QQuickItem *, qreal, qreal);
        Q_INVOKABLE void applyLeft(QQuickWindow*, QQuickItem *, qreal, qreal);
        Q_INVOKABLE void applyRight(QQuickWindow*, QQuickItem *, qreal, qreal);
        Q_INVOKABLE void applyBottomLeft(QQuickWindow*, QQuickItem *, qreal, qreal);
        Q_INVOKABLE void applyBottomRight(QQuickWindow*, QQuickItem *, qreal, qreal);
        Q_INVOKABLE void applyBottom(QQuickWindow*, QQuickItem *, qreal, qreal);
    public:
        static ApplyFrame * instance();
    private:
        sstd_class(ApplyFrame);
    };

}/*namespace sstd*/


