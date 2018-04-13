#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtQml>

#include "grille.h"
#include "case.h"
#include "score.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Grille G;
    Case Case1(0,0,G);
    Case Case2(0,1,G);
    Case Case3(0,2,G);
    Case Case4(0,3,G);
    Case Case5(1,0,G);
    Case Case6(1,1,G);
    Case Case7(1,2,G);
    Case Case8(1,3,G);
    Case Case9(2,0,G);
    Case Case10(2,1,G);
    Case Case11(2,2,G);
    Case Case12(2,3,G);
    Case Case13(3,0,G);
    Case Case14(3,1,G);
    Case Case15(3,2,G);
    Case Case16(3,3,G);
    Score Score(4,4,G);

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("grille", &G);
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
    engine.rootContext()->setContextProperty("Score", &Score);


    G.Print();
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
