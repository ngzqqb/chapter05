#pragma once

#include <sstd_qt_qml_quick_library.hpp>

namespace sstd{

    class ApplyFrame : public QObject {
        Q_OBJECT
    public:
        ApplyFrame();
    public:
        Q_INVOKABLE void applyTopLeft(QQuickWindow*,qreal,qreal);
    public:
        static ApplyFrame * instance();
    private:
        sstd_class( ApplyFrame );
    };

}/*namespace sstd*/


