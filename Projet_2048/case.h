#ifndef CASE_H
#define CASE_H

#include <QObject>
#include "grille.h"


class Case : public QObject
{
    Q_OBJECT
public:
    Case(int ligne, int colonne, Grille grille, QObject *parent = 0);

    Q_PROPERTY(QString CaseQML READ readCase NOTIFY caseChanged);
    Q_PROPERTY(QString ColorQML READ readColor NOTIFY ColorChanged)


    QString readCase();
    QString readColor();

signals:
    void cptChanged();

public slots:

private:
    int fCase;
    int ligne;
    int colonne;
    Grille grille;
};

#endif // CASE_H
