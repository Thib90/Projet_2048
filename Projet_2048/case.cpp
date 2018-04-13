#include "case.h"

Case::Case(int ligne, int colonne, Grille grille, QObject *parent) : QObject(parent)
{
    this->ligne=ligne;
    this->colonne=colonne;
    for (int i=0; i<4; i++)
    {
        for(int j=0; j<4 ; j++)
        {
            this->grille.ValueCase(i,j,grille.Get(i,j));

        }
    }

    fCase=10;
    caseChanged();
}

QString Case::Read()
{
    fCase=grille.Get(ligne,colonne);
    return QString::number(fCase);
}





void Case::Changement()
{
    caseChanged();
}

