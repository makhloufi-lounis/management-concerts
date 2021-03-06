# Management Concerts

##Introduction
Cette application est une simple application zend framework 2 qui permet de
consulter, filtrer et trier des concerts en fonction de plusieurs
paramètres.

### A.1 - Page d'accueil

Le filtrage se fait sans rechargement de page, à l'aide de requêtes
asynchrones (AJAX) pour rafraîchir les éléments de la page et s'assurer que les
produits affichés sont toujours ceux trouvés par les filtres de recherche.

De la même manière, la navigation entre les pages des résultats devra se fait
sans rechargement de la page.

Les concerts pourront être filtrés en fonction des paramètres suivants :

    - Ville du concert
    - Tags associés à l'artiste (Rock, Pop, Soul, Funk etc.)
    - Prix du concert
    - Date du concert : le visiteur pourra choisir une fourchette entre deux dates

### A.2 - Page de détails d'un concert

La page de détail d'un concert permet d'afficher le détail de l'artiste et du
concert, divisé en deux colonnes.

La première colonne montre les informations de l'artiste, dont son nom, son
image de couverture, sa déscription.
Une vidéo récupérée via l'API Youtube sera aussi affichée.

La seconde colonne quant à elle affichera le détail de l'évènement, dont sa
date, le nom du lieu, l'adresse et la Ville.
Une carte Google Map récupérée à partir de l'API Google Maps est affichée.


## B - Installation de l'application

### B.1 - Configuration de la base de données

Il vous faudra importer la base de données contenues dans le dossier resources
disponible a la racine du projet

Configurer l'application avec vos propres infos dans le fichier

        - config/autoload/local.php

### B.2 - Installation de Zend Framework 2

Pour installer Zend Framework 2 dans l'application, utiliser composer comme
ci-dessous:

        - php composer.phar self-update
        - php composer.phar install

### B.3 - configuration Apache

La configuration d'un hôte virtuel pour pointer vers le répertoire / public
du projet devra ressembler au modele ci-dessous:

    <VirtualHost *:80>
        ServerName www.news-concert.com
        DocumentRoot C:/wamp/www/Sites/management_concerts/public
        SetEnv APPLICATION_ENV "development"
        <Directory C:/wamp/www/Sites/management_concerts/public>
            DirectoryIndex index.php
            AllowOverride All
            Order allow,deny
            Allow from all
        </Directory>
    </VirtualHost>

### B.2 - configuration de API YOUTUBE

Il faut utiliser votre propre key API dans le script js:

        -(public/js/detail-concert.js - ligne 49)

pour la recuperation des videos d'artistes



