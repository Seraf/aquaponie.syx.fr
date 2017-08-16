+++
topics = ["Travaux","Domotique"]
date = "2017-06-08T18:12:28+02:00"
tags = ["serre","domotique","travaux","electronique"]
title = "Construction et bidouillages"
description = ""
truncated = false
+++
{{< pswp-init >}}

Ca y'est, j'ai commencé à monter ma serre. Il me reste encore à poser les parois à l'arrière et monter les goutieres mais j'ai besoin d'aller chez le voisin, et il n'est jamais là et ferme son portail à clé ... J'espère pouvoir finir cette partie ce weekend.

Manque de bol, j'ai eu un problème sur mes colis, je me retrouve avec deux pièces manquantes qui m'empêchent de faire la porte. J'ai appellé la jardinerie dans laquelle j'ai fais mon achat, ils vont me renvoyer les pièces manquantes.

Même si elle n'est pas encore finie, c'est déjà un plaisir de voir la lucarne se lever toute seule automatiquement depuis ma véranda !

{{< gallery title="Photos de la serre" >}}
{{< figure link="/post/img/construction-et-bidouillages/serre-1.jpg" thumb="-thumb" caption="La serre vue de face" >}}
{{< figure link="/post/img/construction-et-bidouillages/serre-2.jpg" thumb="-thumb" caption="La serre vue de coté" >}}
{{< figure link="/post/img/construction-et-bidouillages/serre-3.jpg" thumb="-thumb" caption="Lucarne avec ouverture automatique" >}}
{{< /gallery >}}

Si vous avez l'oeil, vous avez certainement remarqué des parpaings au fond de la serre. J'avais au départ prévu de juste faire mon trou et mettre mon feutre et ma bache, mais mon père m'a fait remarquer que ça risquerait de s'ébouler.
Dans le doute, quitte à faire un truc qui tient bien dans le temps, il est venu m'aider à agrandir le trou et faire un vrai bassin digne de ce nom !

{{< figure link="/post/img/construction-et-bidouillages/bassin.jpg" thumb="-thumb" caption="Un vrai bassin solide !" >}}

J'ai également reçu mon capteur de pH, ma prise BNC pour connecter ma sonde, et c'est parti pour connecter tout ça.

{{< figure link="/post/img/construction-et-bidouillages/electronique.jpg" thumb="-thumb" caption="La sonde de pH" >}}

J'ai donc ajouté la partie pH à mon dashboard, créé des alertes que je reçois sur mon téléphone portable, et j'ai également fait des graphiques pour [flowerpower](https://www.parrot.com/fr/jardin-connecte/parrot-pot) (ils ne produisent plus les capteurs, ils les ont remplacé par des pots).

Je me suis souvenu que je disposais de 3 capteurs que j'avais à l'époque acheté en promotion : 45€ les 3 (alors que ça coutait environ 50€ l'unité). J'avais été déçu en rentrant chez moi de comprendre qu'il fallait se connecter dessus en bluetooth regulierement pour envoyer/lire/traiter les infos et que c'était completement fermé niveau API.

Les choses ont changé car ils proposent aujourd'hui une API et un programme qui permet de se connecter en bluetooth sur les capteurs et d'envoyer continuellement les informations sur leur cloud.

J'ai donc mis en place ce petit programme dans un container docker, et j'ai créé une sonde qui va récuperer ces informations pour les injecter dans des graphiques.

(Tout ce charabia ci dessus ne va pas forcement parler à grand monde. Je ferais une page dédiée de tutorial pour expliquer toute la mise en oeuvre pas à pas. J'explique juste dans ce post mes reflexions et mes résultats)

Voici donc à quoi ressemble aujourd'hui mon tableau de bord :

{{< figure link="/post/img/construction-et-bidouillages/dashboard.png" thumb="-thumb" caption="Mon dashboard Grafana" >}}

J'ai hate de finir ma serre, d'installer les tours, de mettre l'irrigation, les goutieres, mettre en eau le bassin et commencer à cycler l'azote !