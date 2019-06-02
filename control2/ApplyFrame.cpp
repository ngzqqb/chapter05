#include "ApplyFrame.hpp"

namespace sstd{

    void ApplyFrame::applyTopLeft(QQuickWindow* argWindow,
                                  qreal argMouseX,
                                  qreal argMouseY){
        if( !argWindow ){
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        auto varTopLeft = varGeometry.topLeft();
        varTopLeft += {argMouseX,argMouseY};
        varGeometry.setTopLeft( varTopLeft );
        argWindow->setGeometry( varGeometry.toRect() );
    }


    void ApplyFrame::applyTop(QQuickWindow* argWindow,
                              qreal argMouseX,
                              qreal argMouseY){
        if( !argWindow ){
            return;
        }
        QRectF varGeometry = argWindow->geometry();
        varGeometry.setTop( varGeometry.top() + argMouseY );
        argWindow->setGeometry( varGeometry.toRect() );
    }

    void ApplyFrame::applyTopRight(QQuickWindow* argWindow,
                                   qreal argMouseX,
                                   qreal argMouseY){
        if( !argWindow ){
            return;
        }
        QRectF varGeometry = argWindow->geometry();
    }

    void ApplyFrame::applyLeft(QQuickWindow* argWindow,
                               qreal argMouseX,
                               qreal argMouseY){
        if( !argWindow ){
            return;
        }
        QRectF varGeometry = argWindow->geometry();
    }

    void ApplyFrame::applyRight(QQuickWindow* argWindow,
                                qreal argMouseX,
                                qreal argMouseY){
        if( !argWindow ){
            return;
        }
        QRectF varGeometry = argWindow->geometry();
    }

    void ApplyFrame::applyBottomLeft(QQuickWindow* argWindow,
                                     qreal argMouseX,
                                     qreal argMouseY){
        if( !argWindow ){
            return;
        }
        QRectF varGeometry = argWindow->geometry();
    }

    void ApplyFrame::applyBottomRight(QQuickWindow* argWindow,
                                      qreal argMouseX,
                                      qreal argMouseY){
        if( !argWindow ){
            return;
        }
        QRectF varGeometry = argWindow->geometry();
    }

    void ApplyFrame::applyBottom(QQuickWindow* argWindow,
                                 qreal argMouseX,
                                 qreal argMouseY){
        if( !argWindow ){
            return;
        }
        QRectF varGeometry = argWindow->geometry();
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


