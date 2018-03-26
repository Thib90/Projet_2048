#include "grille.h"
#include <vector>
#include "iostream"
using namespace std;


Grille::Grille()
{
    for(int i=0; i<4; i++)
        for(int j=0; j<4; j++)
        {
            G[i][j] = 0;
        }
    Perdu=1;


}




void Grille::AjoutCase()
{
    // Dans cette fonction nous avons décidé de numéroté les cases de la grille de jeu de 1 à 16 et non par leurs indices
    vector<int> casevide; //création de la liste des cases vides
    int indice_grille[16][2]; // tableau reliant indices de la grille avec notre numérotation de grille

    for (int k=0; k<16; k++) // Vecteurs qui associera les indices des cases de la grille à notre numérotation
    {
        indice_grille[k][0] = k/4; // permet d'obtenir le numéro de ligne
        indice_grille[k][1] = k % 4; // permet d'obtenir le numéro de colonne
    }
    int x; // permettra de donner la ligne de la case à remplir
    int y; // permettra de donner la colonne de la case à remplir
    int compteur = 0; //permet de connaître le numéro de la case concernée
    int choix_case; //va choisir la case concernée par l'ajout d'un nombre
    int increment = 0; // permet de connaître la taille du vecteur crée
    int nombre_ajoute; // nombre qui sera ajouté à la grille
    for (int i=0; i<4; i++) // listage des cases vides
        for(int j=0; j<4; j++)
        {
            compteur++;
            if (G[i][j] == 0)
            {
                casevide.push_back(compteur);
                increment++;
            }
        }
    if (increment != 0)
    {
        choix_case = casevide[rand() % increment]; //choix de la case à remplir
        nombre_ajoute = 2* (rand() % 2 + 1 );
        choix_case--;
        x= indice_grille[choix_case][0];
        y = indice_grille[choix_case][1];
        G[x][y] = nombre_ajoute; // Ajout du nombre à ajouter dans la grille
    }
    else
    {
        Perdu=0;

    }

}


void Grille::TestPerdu()
{
    if (Perdu==0)
    {
        cout<< "Le joueur vient de perdre";
    }

}


void Grille::Print()
{
    for(int i=0; i<4; i++) {
        cout << endl << "--------------------------------------------" << endl;
        for(int j=0; j<4; j++)
            cout << G[i][j] << " ; ";
    }
}


