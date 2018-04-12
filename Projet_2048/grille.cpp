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
            compteur++; // Permet de connaitre quel case on regarde
            if (G[i][j] == 0) //la case est vide
            {
                casevide.push_back(compteur); // ajout du numéro de la case dans notre vecteur listant les cases vides
                increment++; // compte le nombre de case vide
            }
        }
    if (increment != 0) //vérifie que le joueur n'a pas perdu
    {
        choix_case = casevide[rand() % increment]; //choix de la case à remplir
        nombre_ajoute =  (rand() % 3 + 1 ); // choix du nombre à ajouter
        if (nombre_ajoute==3) // on veut que la case 4 apparaisse avec une moins grande probabilité
        {
            nombre_ajoute = 4;
        }
        else
        {
            nombre_ajoute = 2;
        }
        choix_case--; //décalage entre numérotation de c++ et la notre
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
    for (int ligne=0; ligne<3; ligne++) //à changer
    {
       for(int colonne=0; colonne<4; colonne++)
       {
           if(G[ligne][colonne] == 0)
           {
               int compteur =1;
               while(G[ligne+compteur][colonne]==0 and compteur<3-ligne)
               {
                   compteur ++;
               }
               if (G[ligne+compteur][colonne] !=0)
               {
                   G[ligne][colonne] = G[ligne+compteur][colonne];
                   G[ligne+compteur][colonne] = 0;

               }
           }
       }
    } //fin changement
    for (int ligne=0; ligne<3; ligne++)
    {
        for(int colonne=0; colonne<4; colonne++)
        {
            if (G[ligne][colonne]==G[ligne+1][colonne])
            {
                G[ligne][colonne]=G[ligne][colonne]*2;

                if (ligne !=2)
                {
                    for (int k=1 ; k < 3-ligne ;k++)
                    {
                        G[ligne+k][colonne] = G[ligne+k+1][colonne];
                    }
                }
                G[3][colonne]=0;
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
           if(G[ligne][colonne] == 0)
           {
               int compteur =1;
               while(G[ligne-compteur][colonne]==0 and compteur<ligne)
               {
                   compteur ++;
               }
               if (G[ligne-compteur][colonne] !=0)
               {
                   G[ligne][colonne] = G[ligne-compteur][colonne];
                   G[ligne-compteur][colonne] = 0;

               }
           }
       }
    }
    for (int ligne=3; ligne>0; ligne--)
    {
        for(int colonne=0; colonne<4; colonne++)
        {
            if (G[ligne][colonne]==G[ligne-1][colonne])
            {
                G[ligne][colonne]=G[ligne-1][colonne]*2;

                if (ligne!=1)
                {
                    for (int k = 1 ; k < ligne ;k ++)
                    {
                        G[ligne-k][colonne] = G[ligne-k-1][colonne];
                    }
                }

                G[0][colonne]=0;
            }

        }


    }
    AjoutCase();
}

void Grille::MouvementDroite()
{
    for (int colonne=3; colonne>0; colonne--)
    {
       for(int ligne=0; ligne<4; ligne++)
       {
           if(G[ligne][colonne] == 0)
           {
               int compteur =1;
               while(G[ligne][colonne-compteur]==0 and compteur<colonne)
               {
                   compteur ++;
               }
               if (G[ligne][colonne-compteur] !=0)
               {
                   G[ligne][colonne] = G[ligne][colonne-compteur];
                   G[ligne][colonne-compteur] = 0;
               }
           }
       }
    }
    for (int colonne=3; colonne>0; colonne--)
    {
        for(int ligne=0; ligne<4; ligne++)
        {
            if (G[ligne][colonne]==G[ligne][colonne-1])
            {
                G[ligne][colonne]=G[ligne][colonne-1]*2;

                if (colonne!=1)
                {
                    for (int k = 1 ; k < colonne ;k ++)
                    {
                        G[ligne][colonne-k] = G[ligne][colonne-k-1];
                    }
                }

                G[ligne][0]=0;
            }

        }


    }
    AjoutCase();
}


void Grille::MouvementGauche()
{
    for (int colonne=0; colonne<3; colonne++) //à changer
    {
       for(int ligne=0; ligne<4; ligne++)
       {
           if(G[ligne][colonne] == 0)
           {
               int compteur =1;
               while(G[ligne][colonne+compteur]==0 and compteur<3-colonne)
               {
                   compteur ++;
               }
               if (G[ligne][colonne+compteur] !=0)
               {
                   G[ligne][colonne] = G[ligne][colonne+compteur];
                   G[ligne][colonne+compteur] = 0;

               }
           }
       }
    } //fin changement
    for (int colonne=0; colonne<3; colonne++)
    {
        for(int ligne=0; ligne<4; ligne++)
        {
            if (G[ligne][colonne]==G[ligne][colonne+1])
            {
                G[ligne][colonne]=G[ligne][colonne]*2;

                if (colonne !=2)
                {
                    for (int k=1 ; k < 3-colonne ;k++)
                    {
                        G[ligne][colonne+k] = G[ligne][colonne+k+1];
                    }
                }
                G[ligne][3]=0;
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


