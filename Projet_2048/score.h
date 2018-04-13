#ifndef SCORE_H
#define SCORE_H

#include <iostream>
#include <QObject>

class Score : public QObject
{
    Q_OBJECT
public:
    Score(QObject *parent = 0);
    Q_INVOKABLE void ajout();

    Q_PROPERTY(QString ScoreQML READ readScore NOTIFY scoreChanged);

    QString readScore();


signals:
    void scoreChanged();

public slots:

private:
    int fScore;
};

#endif // SCORE_H
