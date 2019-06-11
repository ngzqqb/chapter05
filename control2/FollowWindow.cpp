#include "FollowWindow.hpp"

namespace sstd {

    FollowWindow::FollowWindow(QObject * arg) : Super{ arg } {
        thisWindow = qobject_cast<QQuickWindow *>(arg);
        assert(thisWindow);
    }

    void FollowWindow::setLeftMargin(const qreal & arg) {
        if (arg == thisLeftMargin) {
            return;
        }
        thisLeftMargin = arg;
        tryUpdateThisPos();
        leftMarginChanged();
    }

    void FollowWindow::setRightMargin(const qreal & arg) {
        if (arg == thisRightMargin) {
            return;
        }
        thisRightMargin = arg;
        tryUpdateThisPos();
        rightMarginChanged();
    }

    void FollowWindow::setTopMargin(const qreal & arg) {
        if (arg == thisTopMargin) {
            return;
        }
        thisTopMargin = arg;
        tryUpdateThisPos();
        topMarginChanged();
    }

    void FollowWindow::setBottomMargin(const qreal & arg) {
        if (arg == thisBottomMargin) {
            return;
        }
        thisBottomMargin = arg;
        tryUpdateThisPos();
        bottomMarginChanged();
    }

    void FollowWindow::setTargetWindow(QQuickWindow * arg) {
        assert(thisTargetWindow == nullptr);
        thisTargetWindow = arg;
        tryUpdateThisPos();
        connect(thisTargetWindow, &QQuickWindow::xChanged, this, &FollowWindow::tryUpdateThisPos);
        connect(thisTargetWindow, &QQuickWindow::yChanged, this, &FollowWindow::tryUpdateThisPos);
        connect(thisTargetWindow, &QQuickWindow::widthChanged, this, &FollowWindow::tryUpdateThisPos);
        connect(thisTargetWindow, &QQuickWindow::visibilityChanged, this, &FollowWindow::tryUpdateThisPos);
        targetWindowChanged();
    }

    void FollowWindow::tryUpdateThisPos() {
        if (thisUpdateThisPosCount) {
            return;
        }
        if (thisTargetWindow&&thisWindow) {/*过滤过于频繁的调用*/
            ++thisUpdateThisPosCount;
            QMetaObject::invokeMethod(this, [this]() {
                --thisUpdateThisPosCount;
                this->updateThisPos();
            }, Qt::QueuedConnection);
        }
    }

    void FollowWindow::updateThisPos() {

        switch (thisTargetWindow->visibility()) {
        case QWindow::Hidden: thisWindow->setGeometry({ 0,0,0,0 }); return;
        case QWindow::AutomaticVisibility: break;
        case QWindow::Windowed: break;
        case QWindow::Minimized:thisWindow->setGeometry({ 0,0,0,0 }); return;
        case QWindow::Maximized: break;
        case QWindow::FullScreen:thisWindow->setGeometry({ 0,0,0,0 }); return;
        }

        auto varTG = thisTargetWindow->geometry();
        auto varTFG = thisTargetWindow->frameGeometry();
        varTFG.setBottom(varTG.top() + thisBottomMargin);
        varTFG.setLeft(varTFG.left() + thisLeftMargin);
        varTFG.setRight(varTFG.right() + thisRightMargin);
        varTFG.setTop(varTFG.top() + thisTopMargin);
        thisWindow->setGeometry(varTFG);
    }

    FollowWindow * FollowWindow::qmlAttachedProperties(QObject *arg) {
        return sstd_new< FollowWindow >(arg);
    }

}/*namespace sstd*/

inline static void startTheApp() {
    qmlRegisterUncreatableType<sstd::FollowWindow>("sstd.follow.window",
        1, 0,
        "FollowWindow",
        QStringLiteral("This Is Attached Type!"));
    qmlProtectModule("sstd.follow.window", 1);
}

Q_COREAPP_STARTUP_FUNCTION(startTheApp)

