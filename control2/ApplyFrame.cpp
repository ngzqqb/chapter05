#include "ApplyFrame.hpp"

namespace sstd {

    void ApplyFrame::applyTopLeft(QQuickWindow* argWindow,
        QQuickItem * argItem,
        qreal argMouseX,
        qreal argMouseY) {
        if ((!argWindow) || (!argItem)) {
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        varGeometry.setTopLeft(argItem->mapToGlobal(QPointF{ argMouseX,argMouseY }));
        argWindow->setGeometry(varGeometry.toRect());
    }

    void ApplyFrame::applyTop(QQuickWindow* argWindow,
        QQuickItem * argItem,
        qreal argMouseX,
        qreal argMouseY) {
        if ((!argWindow) || (!argItem)) {
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        varGeometry.setTop(argItem->mapToGlobal(QPointF{ argMouseX,argMouseY }).y());
        argWindow->setGeometry(varGeometry.toRect());
    }

    void ApplyFrame::applyTopRight(QQuickWindow* argWindow,
        QQuickItem * argItem,
        qreal argMouseX,
        qreal argMouseY) {
        if ((!argWindow) || (!argItem)) {
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        varGeometry.setTopRight(argItem->mapToGlobal(QPointF{ argMouseX,argMouseY }));
        argWindow->setGeometry(varGeometry.toRect());
    }

    void ApplyFrame::applyLeft(QQuickWindow* argWindow,
        QQuickItem * argItem,
        qreal argMouseX,
        qreal argMouseY) {
        if ((!argWindow) || (!argItem)) {
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        varGeometry.setLeft(argItem->mapToGlobal(QPointF{ argMouseX,argMouseY }).x());
        argWindow->setGeometry(varGeometry.toRect());
    }

    void ApplyFrame::applyRight(QQuickWindow* argWindow,
        QQuickItem * argItem,
        qreal argMouseX,
        qreal argMouseY) {
        if ((!argWindow) || (!argItem)) {
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        varGeometry.setRight(argItem->mapToGlobal(QPointF{ argMouseX,argMouseY }).x());
        argWindow->setGeometry(varGeometry.toRect());
    }

    void ApplyFrame::applyBottomLeft(QQuickWindow* argWindow,
        QQuickItem * argItem,
        qreal argMouseX,
        qreal argMouseY) {
        if ((!argWindow) || (!argItem)) {
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        varGeometry.setBottomLeft(argItem->mapToGlobal(QPointF{ argMouseX,argMouseY }));
        argWindow->setGeometry(varGeometry.toRect());
    }

    void ApplyFrame::applyBottomRight(QQuickWindow* argWindow,
        QQuickItem * argItem,
        qreal argMouseX,
        qreal argMouseY) {
        if ((!argWindow) || (!argItem)) {
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        varGeometry.setBottomRight(argItem->mapToGlobal(QPointF{ argMouseX,argMouseY }));
        argWindow->setGeometry(varGeometry.toRect());
    }

    void ApplyFrame::applyBottom(QQuickWindow* argWindow,
        QQuickItem * argItem,
        qreal argMouseX,
        qreal argMouseY) {
        if ((!argWindow) || (!argItem)) {
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        varGeometry.setBottom(argItem->mapToGlobal(QPointF{ argMouseX,argMouseY }).y());
        argWindow->setGeometry(varGeometry.toRect());
    }

    ApplyFrame * ApplyFrame::instance() {
        static auto globalAns = sstd_new< ApplyFrame >();
        return globalAns;
    }

    ApplyFrame::ApplyFrame() {
        QQmlEngine::setObjectOwnership(this, QQmlEngine::CppOwnership);
    }

}/*namespace sstd*/

inline static void startTheApp() {
    qmlRegisterSingletonType<sstd::ApplyFrame>("sstd.applyframe",
        1, 0,
        "ApplyFrame", [](auto, auto)->QObject * {
        return sstd::ApplyFrame::instance();
    });
    qmlProtectModule("sstd.applyframe", 1);
}

Q_COREAPP_STARTUP_FUNCTION(startTheApp)
