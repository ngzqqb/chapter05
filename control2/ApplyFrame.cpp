#include "ApplyFrame.hpp"

namespace sstd{

    void ApplyFrame::applyTopLeft(QQuickWindow* argWindow,
                                  qreal argMouseX,
                                  qreal argMouseY){
        if( !argWindow ){
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        qDebug() << varGeometry << argMouseX << argMouseY;
        auto varTopLeft = varGeometry.topLeft();
        varTopLeft += {argMouseX,argMouseY};
        varGeometry.setTopLeft( varTopLeft );
        argWindow->setGeometry( varGeometry.toRect() );
    }

    ApplyFrame * ApplyFrame::instance(){
        static auto globalAns = sstd_new< ApplyFrame >() ;
        return globalAns;
    }

    ApplyFrame::ApplyFrame(){
        QQmlEngine::setObjectOwnership(this,QQmlEngine::CppOwnership);
    }


}/*namespace sstd*/

inline static void startTheApp(){
    qmlRegisterSingletonType<sstd::ApplyFrame>("sstd.applyframe",
                                               1,0,
                                               "ApplyFrame",[](auto,auto)->QObject *{
        return sstd::ApplyFrame::instance();
    });
}

Q_COREAPP_STARTUP_FUNCTION(startTheApp)


