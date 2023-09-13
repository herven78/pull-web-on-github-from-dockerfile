Avec cette version nous allons dynamisez le recuperation du code sur github à l'intérieur du fichier Dockerfile.


Imaginez que sur github le code est enmené a évoluer ,comment est ce que nous allons mettre a jour le code du site et le rebuilder automatiquement ?

A l'interieur de mon Dockerfile,nous allons recuperez de facon dynamique le code de l'application sur github, 
Ainsi a chaque fois qu'un build sera lancé il fera un git clone dynamiquement.   


c'est parti pour un petit tp!

Prerequis : Installer Docker


-Etape 1: Clonez le code en executez la commande suivante "git clone https://github.com/herven78/pull-web-on-github-from-dockerfile.git "

-Etape 2: Mettez vous dans le dossier cloné et Construisez votre image avec la commande : "docker build -t webapp:v2 . " assurez vous d'etre dans le dossier 
webapp contenant le Dockerfile et le fichier du site cloné.

-Etape 3: demarrer le conteneur "docker run --name monsite -d -p 80:80 webapp:v2" 

Testez en saisissant dans votre navigateur :  "localhost:80" 


Bonne chance !
 

@hv
