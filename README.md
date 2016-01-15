# Management Concerts
=======================

##Introduction
------------
Cette application est une simple application zend framework 2 qui permet de
permet de consulter, filtrer et trier des concerts en fonction de plusieurs 
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



