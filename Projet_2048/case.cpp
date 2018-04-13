#include "case.h"

Case::Case(int ligne, int colonne, Grille grille, QObject *parent) : QObject(parent)
{
    this->ligne=ligne;
    this->colonne=colonne;
    this->grille=grille;
    fCase=0;
    cptChanged();
}

QString Case::readCase()
{
    fCase= grille [ligne][colonne];
   return QString::number(fCase);
}


