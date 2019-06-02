#pragma once

#include <sstd_qt_qml_quick_library.hpp>

namespace sstd{

    class ApplyFrame : public QObject {
        Q_OBJECT
    public:
        ApplyFrame();
    public:
        Q_INVOKABLE void applyTopLeft(QQuickWindow*,qreal,qreal);
        Q_INVOKABLE void applyTop(QQuickWindow*,qreal,qreal);
        Q_INVOKABLE void applyTopRight(QQuickWindow*,qreal,qreal);
        Q_INVOKABLE void applyLeft(QQuickWindow*,qreal,qreal);
        Q_INVOKABLE void applyRight(QQuickWindow*,qreal,qreal);
        Q_INVOKABLE void applyBottomLeft(QQuickWindow*,qreal,qreal);
        Q_INVOKABLE void applyBottomRight(QQuickWindow*,qreal,qreal);
        Q_INVOKABLE void applyBottom(QQuickWindow*,qreal,qreal);
    public:
        static ApplyFrame * instance();
    private:
        sstd_class( ApplyFrame );
    };

}/*namespace sstd*/


