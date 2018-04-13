#ifndef GRILLE_H
#define GRILLE_H

#include <QObject>

/* Cette classe a pour but de coder la grille représentant le jeu
  */

class Grille
{
    public:

        Grille();// Constructeur de la grille
        Grille(Grille &G); //Copie une grille
        void AjoutCase (); //Ajout de 2 ou 4 dans une des cases libres après un mouvement
        void MouvementBas(); //Fonction permettant de gérer les mouvements vers le bas
        void MouvementHaut(); //Fonction permettant de gérer les mouvements vers le haut
        void MouvementGauche(); //Fonction permettant de gérer les mouvements vers la gauche
        void MouvementDroite(); //Fonction permettant de gérer les mouvements vers la droite
        void TestPerdu(); // Test si le joueur a perdu une partie à la fin d'un tour de jeu
        void Print(); // Permet de tester le bon fonctionnement de chaque fonction réalisée
        int Get(int i, int j); // Permet d'obtenir la valeur de chaucun des éléments de la grille


    private:
        int G[4][4]; //Définition de la grille
        int Perdu; //Permet de savoir si le jouer a perdu ou non

};

bool operator !=(Grille &G1, Grille &G2); /* opérateur permettant de savoir si deux grilles sont différentes ou pas.
Cet opérateur va renvoyer un  booléen. C'est pourquoi nous l'avons codé hors de la classe.*/

#endif // GRILLE_H
