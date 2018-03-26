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
    vector<int> casevide; //création de la liste des cases vides
    int indice_grille[16][2]; // tableau reliant indices de la grille avec notre numérotation de grille

    for (int k=0; k<16; k++)
    {
        indice_grille[k][0] = k/4;
        indice_grille[k][1] = k % 4;
    }
    int x;
    int y;
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



void Grille::MouvementHaut()
{
    for (int ligne=0; ligne<3; ligne++)
    {
        for(int colonne=0; colonne<4; colonne++)
        {
            if (G[ligne][colonne]==G[ligne+1][colonne])
            {
                G[ligne][colonne]=G[ligne][colonne]*2;
                G[ligne+1][colonne]=0;
            }
            if (G[ligne][colonne]==0)
            {
                G[ligne][colonne]=G[ligne+1][colonne];
                G[ligne+1][colonne]=0;
            }
        }


    }
    AjoutCase();
}

void Grille::MouvementBas()
{
    for (int ligne=3; ligne>0; ligne--)
    {
        for(int colonne=0; colonne<4; colonne++)
        {
            if (G[ligne][colonne]==G[ligne-1][colonne])
            {
                G[ligne][colonne]=G[ligne-1][colonne]*2;
                G[ligne-1][colonne]=0;
            }
            if (G[ligne][colonne]==0)
            {
                G[ligne][colonne]=G[ligne-1][colonne];
                G[ligne-1][colonne]=0;
            }
        }


    }
    AjoutCase();
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

    cout << endl << endl;
}


