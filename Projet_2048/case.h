#ifndef CASE_H
#define CASE_H

#include <QObject>

class Case : public QObject
{
    Q_OBJECT
public:
    explicit Case(QObject *parent = nullptr);
    void FusionCase (); //Permet de gérer l'addition de 2 cases.

signals:

public slots:
};

#endif // CASE_H
