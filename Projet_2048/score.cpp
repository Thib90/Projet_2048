#include "score.h"


Score::Score(QObject *parent) : QObject(parent)
{
    fScore=1120;
    scoreChanged();
}

QString Score::readScore()
{
    return QString::number(fScore);
}

void Score::ajout()
{
    std::cout<<"Ajout";
    fScore++;
    scoreChanged();
}



