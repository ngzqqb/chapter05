#include "FollowWindow.hpp"

namespace sstd{

    FollowWindow::FollowWindow(QObject * arg) : Super{arg} {
        thisWindow = qobject_cast< QQuickWindow * >( arg );
        assert(thisWindow);
    }

    void FollowWindow::setTargetWindow(QQuickWindow * arg){
        assert( thisTargetWindow == nullptr );
        thisTargetWindow = arg;
        updateThisPos();
        connect( thisTargetWindow , &QQuickWindow::xChanged , this , &FollowWindow::updateThisPos );
        connect( thisTargetWindow , &QQuickWindow::yChanged , this , &FollowWindow::updateThisPos );
        connect( thisTargetWindow , &QQuickWindow::widthChanged , this , &FollowWindow::updateThisPos );
        targetWindowChanged();
    }

    void FollowWindow::updateThisPos(){
        auto varTG = thisTargetWindow->geometry();
        auto varTFG = thisTargetWindow->frameGeometry();
        varTFG.setBottom( varTG.top() - 2 );
        varTFG.setLeft( varTFG.left() + 8 );
        varTFG.setRight( varTFG.right() - 200 );
        varTFG.setTop(varTFG.top() + 2 );
        thisWindow->setGeometry( varTFG );
    }

    FollowWindow * FollowWindow::qmlAttachedProperties(QObject *arg){
        return sstd_new< FollowWindow >( arg );
    }

}/*namespace sstd*/

inline static void startTheApp(){
    qmlRegisterUncreatableType<sstd::FollowWindow>("sstd.follow.window",
                                                   1,0,
                                                   "FollowWindow",
                                                   QStringLiteral("This Is Attached Type!"));
}

Q_COREAPP_STARTUP_FUNCTION(startTheApp)

