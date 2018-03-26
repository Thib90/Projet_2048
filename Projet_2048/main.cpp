#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "grille.h"
#include "case.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;


    Grille G;
    G.AjoutCase();
    G.Print();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.AjoutCase();
    G.Print();
    G.MouvementHaut();
    G.Print();
    G.MouvementBas();
    G.Print();


    return 0;


    return app.exec();
}
