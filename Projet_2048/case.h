#ifndef CASE_H
#define CASE_H

#include <QObject>
#include "grille.h"


class Case : public QObject
{
    Q_OBJECT
public:
    Case(int ligne, int colonne, Grille grille, QObject *parent = 0);
    Q_INVOKABLE void changement(Grille grille, int key);
    Q_PROPERTY(QString CaseQML READ Read NOTIFY caseChanged);

    QString Read();



signals:
    void caseChanged();

public slots:

private:
    int fCase;
    int ligne;
    int colonne;
    Grille MaGrille;
};

#endif // CASE_H
