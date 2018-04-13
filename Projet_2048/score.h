#ifndef SCORE_H
#define SCORE_H

#include <QObject>

class Score : public QObject
{
    Q_OBJECT
    explicit Score(QObject *parent = 0);
    Q_INVOKABLE void Ajout();

    Q_PROPERTY(QString ScoreQML READ ReadScore NOTIFY ScoreChanged);

    QString readScore();


signals:
    void ScoreChanged();

public slots:

private:
    int fScore;
};

#endif // SCORE_H
