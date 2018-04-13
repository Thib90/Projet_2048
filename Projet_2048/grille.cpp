#include "grille.h"
#include <vector>
#include "iostream"
using namespace std;


Grille::Grille()
{
    for(int i=0; i<4; i++)
        for(int j=0; j<4; j++)
        {
            this->G[i][j] = 0;
        }
    AjoutCase();
    Perdu=1;


}



Grille::Grille( Grille &Gr) // constructeur de copie
{
    for(int i=0; i<4; i++)
        for(int j=0; j<4; j++)
            this->G[i][j] = Gr.G[i][j]; // copie un à un des termes de la grille à copier
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
    else //le joueur ne peut plus faire de mouvement
    {
        Perdu=0;

    }

}



void Grille::MouvementHaut()
// Fonction qui a pour but de gérer les valeurs de la grille lorsque l'utilisateur commande un mouvementvers le haut
{
    Grille Gcopie(*this); // copie de la grille avant sa modification
    /*Afin de pouvoir gérer les nouvelles valeurs de la grille, on va se placer dans une situation plus facile avant de comparer :
    celle où tous les chiffres non nul sont côte à côte
    On va donc dans un premier temps "trier" notre grille vers le haut*/
    for (int ligne=0; ligne<3; ligne++)   // on parcours les valeurs jusqu'à l'avant dernière valeur car la dernière sera vérifiée car on compare les valeurs 2 à 2
    {
       for(int colonne=0; colonne<4; colonne++) // on réalise ce tri sur toutes les colonnes
       {
           if(G[ligne][colonne] == 0) // on regarde les cases où la valeur est 0
           {
               int compteur =1; // permet de compter le nombre de cases d'affilé contenant un 0
               while(G[ligne+compteur][colonne]==0 and compteur<3-ligne) // permet de réaliser le compte avec en plus une assurance que la boucle s'arrête
               {
                   compteur ++; // 1 case de plus comporte un 0
               }
               if (G[ligne+compteur][colonne] !=0) // cas de la case non nul
               {
                   G[ligne][colonne] = G[ligne+compteur][colonne]; //on échange la case non nul avec une comprenant un 0
                   G[ligne+compteur][colonne] = 0; // deuxième partie de l'échange

               }
           }
       }
    }
    /* Dans un deuxième temps, on va trier notre tableau en comparant chaque valeur 2 à 2.
     Le travail précédemment réalisé permet ainsi de facilité le travail en ne comparant pas de 0 avec des valeurs non nulles*/
    for (int ligne=0; ligne<3; ligne++) // on compare les valeurs 2 à 2 donc on va que jusqu'à 3
    {
        for(int colonne=0; colonne<4; colonne++)
        {
            if (G[ligne][colonne]==G[ligne+1][colonne]) // cas où 2 valeurs consécutifs non déjà fusionnées sont égales
            {
                G[ligne][colonne]=G[ligne][colonne]*2; // on multiplie la case la plus haute

                if (ligne !=2) // si on se trouve dans la dernière comparaison on n'a pas besoin de changer les valeurs des cases
                {
                    for (int k=1 ; k < 3-ligne ;k++) // on va décaler toutes les valeurs des cases en dessous de la case ayant subi la fusion
                    {
                        G[ligne+k][colonne] = G[ligne+k+1][colonne]; // on décale de 1 case vers le haut chaque valeur
                    }
                }
                G[3][colonne]=0; // la dernière case prend un 0 (car on a fusionné)
            }

        }
    }
    if (*this != Gcopie) // on vérifie que le mouvement à emmener une variation de la grille
        AjoutCase(); // si il y a eu un changement de la grille induit par le mouvement, on ajoute une valeur à une case nulle
}

void Grille::MouvementBas()
/*La fonction MouvementBas est codée exactement sur le même raisonnement que la fonction MouvementHaut.
 La seule différence réside dans le fait que l'on raisonne avec les indices vers le bas (en décroissant)
 Ainsi il faut se réfèrer aux commentaires de la fonction MouvementHaut pour avoir plus de détails*/
{
   Grille Gcopie(*this);
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
    if (*this != Gcopie)
        AjoutCase();

}

void Grille::MouvementDroite()
/*La fonction MouvementDroite est codée exactement sur le même raisonnement que la fonction MouvementHaut.
 La seule différence réside dans le fait que l'on raisonne non plus sur les lignes mais sur les colonnes;
 On a donc interverti les roles des deux boucles for.
 Il faut se réfèrer aux commentaires de la fonction MouvementHaut pour avoir plus de détails*/
{
    Grille Gcopie(*this);
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
    if (*this != Gcopie)
        AjoutCase();
}


void Grille::MouvementGauche()
/*La fonction MouvementGauche est codée exactement sur le même raisonnement que la fonction MouvementHaut.
 La seule différence réside dans le fait que l'on raisonne non plus sur les lignes mais sur les colonnes;
 On a donc interverti les roles des deux boucles for. Le déplacement sur les colonnes est inversé par rapport à la fonction MouvementDroite
 Il faut se réfèrer aux commentaires de la fonction MouvementHaut pour avoir plus de détails*/
{
    Grille Gcopie(*this);
    for (int colonne=0; colonne<3; colonne++)
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
    }
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
    if (*this != Gcopie)
        AjoutCase();
}

void Grille::TestPerdu() // Fonction permettant de mettre un terme au jeu
{
    if (Perdu==0) // Cette valeur de la variable interne à la classe indique que le joueur a perdu
    {
        cout<< "Le joueur vient de perdre"; // Message de fin de partie
    }

}


void Grille::Print() // Permet de tester les valeurs de notre grille durant notre codage pour voir si nos nouvelles fonctions fonctionnent
{
    for(int i=0; i<4; i++) {
        cout << endl << "---------------" << endl;
        for(int j=0; j<4; j++)
            cout << G[i][j] << " ; "; // Affichage de chaque valeur de la grille
    }

    cout << endl << endl;
}

int Grille::Get(int i, int j) // Permet d'obtenir les valeurs de la grille ( en effet celles-ci sont privées; internes à la classe)
{
    return this->G[i][j];
}


bool operator !=(Grille &G1, Grille &G2) // Création d'un opérateur de comparaison entre 2 objets de la classe grille
{
    int compteur = 0; // compte le nombre de valeeurs 2 à 2 égales entre les deux grilles
    for (int i=0;i<4;i++)
    {
        for (int j=0; j<4 ; j++)
        {
            if (G1.Get(i,j)==G2.Get(i,j)) //utilisation de la fonction get afin d'avoir accès aux valeurs privées de chaque case des deux grilles
            {
                compteur ++; // les deux valeurs sont égales; on ajoute +1 à compteur
            }
        }
    }
    if (compteur < 16) // cas où toutes les valeurs ne sont pas égales
        return true; // on a réalisé un comparateur de différence donc return true dans le cas où les grilles sont différentes
    else
        return false;
}
