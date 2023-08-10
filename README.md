Le but de ce projet est de créer un système expert sous prolog pour déterminer quel langage de programmation est plus intéressant à apprendre pour un utilisateur donné selon ses objectifs. Les langages visés sont : python, java, C, C++, C#, PHP, Ruby, Objectif-C et JavaScript. Pour cela le fonctionnement du système expert se traduit par un ensemble de questions que le système va poser, l’utilisateur fais des choix de réponse et enfin le système propose le langage le plus adéquat .

Explication des pridacts principal utiliser :
main : le prédicat qui lance le système expert et contient le menu principal, l’utilisateur peut choisir un nombre et si entre un caractère va réaffichera le menu jusqu’à choisi un nombre entre 1 et 6 et 6 pour exit .
number : pour tester input est ce que c est un nombre .
objectif : c’est un prédicat qui va décidez a quelle prédicat va appelle et ca dépend de la réponse qui choisi .
tous les langages qui peuvent être lancez avec un prédicat :
cSharp
php
ruby
javaScript
cplusplus
c
java
python
