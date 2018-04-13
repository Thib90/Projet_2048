#include "case.h"

Case::Case(int ligne, int colonne, Grille grille, QObject *parent) : QObject(parent)
{
    this->ligne=ligne;
    this->colonne=colonne;
    for (int i=0; i<4; i++)
    {
        for(int j=0; j<4 ; j++)
        {
            this->MaGrille.ValueCase(i,j,grille.Get(i,j));

        }
    }

    fCase=10;
    caseChanged();
}

QString Case::Read()
{
    fCase=MaGrille.Get(ligne,colonne);
    return QString::number(fCase);
}


void Case::changement(Grille grille, int key)
{
    switch (key)
    { case 1:
        grille.MouvementHaut();
        break;
      case 2:
        grille.MouvementBas();
        break;
      case 3:
        grille.MouvementGauche();
        break;
      case 4:
        grille.MouvementDroite();
        break;
    }
    caseChanged();
}

