#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <vector>
#include "grille.h"
#include "case.h"
#include "iostream"
using namespace std;


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;


    Grille G1;
    G1.AjoutCase();
    G1.Print();
    return app.exec();
}
