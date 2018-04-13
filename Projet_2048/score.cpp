#include "score.h"


Score::Score(QObject *parent) : QObject(parent)
{
    fScore=10;
    ScoreChanged();
}

QString Score::ReadScore()
{
    return QString::number(fScore);
}

void Score::Ajout() {
    fScore++;
    ScoreChanged();
}



