#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "grille.h"
#include "case.h"
#include "score.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Grille MaGrille;
    Case Case1(0,0,MaGrille);
    Case Case2(0,1,MaGrille);
    Case Case3(0,2,MaGrille);
    Case Case4(0,3,MaGrille);
    Case Case5(1,0,MaGrille);
    Case Case6(1,1,MaGrille);
    Case Case7(1,2,MaGrille);
    Case Case8(1,3,MaGrille);
    Case Case9(2,0,MaGrille);
    Case Case10(2,1,MaGrille);
    Case Case11(2,2,MaGrille);
    Case Case12(2,3,MaGrille);
    Case Case13(3,0,MaGrille);
    Case Case14(3,1,MaGrille);
    Case Case15(3,2,MaGrille);
    Case Case16(3,3,MaGrille);
    Score unscore;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("Case1", &Case1);
    engine.rootContext()->setContextProperty("Case2", &Case2);
    engine.rootContext()->setContextProperty("Case3", &Case3);
    engine.rootContext()->setContextProperty("Case4", &Case4);
    engine.rootContext()->setContextProperty("Case5", &Case5);
    engine.rootContext()->setContextProperty("Case6", &Case6);
    engine.rootContext()->setContextProperty("Case7", &Case7);
    engine.rootContext()->setContextProperty("Case8", &Case8);
    engine.rootContext()->setContextProperty("Case9", &Case9);
    engine.rootContext()->setContextProperty("Case10", &Case10);
    engine.rootContext()->setContextProperty("Case11", &Case11);
    engine.rootContext()->setContextProperty("Case12", &Case12);
    engine.rootContext()->setContextProperty("Case13", &Case13);
    engine.rootContext()->setContextProperty("Case14", &Case14);
    engine.rootContext()->setContextProperty("Case15", &Case15);
    engine.rootContext()->setContextProperty("Case16", &Case16);
    engine.rootContext()->setContextProperty("Score", &unscore);
    engine.rootContext()->setContextProperty("MaGrille", &MaGrille);



    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
