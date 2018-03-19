#ifndef GRILLE_H
#define GRILLE_H

#include <QObject>

/* Cette classe a pour but de coder la grille représentant le jeu
  */

class Grille
{
public:
    Grille(int TailleGrille);

    void AjoutCase (); //Ajout de 2 ou 4 dans une des cases libres après un mouvement
    void MouvementBas(); //Fonction permettant de gérer les mouvements vers le bas
    void MouvementHaut(); //Fonction permettant de gérer les mouvements vers le haut
    void MouvementGauche(); //Fonction permettant de gérer les mouvements vers la gauche
    void MouvementDroite(); //Fonction permettant de gérer les mouvements vers la droite

private:
    int TailleGrille = 4; //Définition de la taille de la grille


};

#endif // GRILLE_H
