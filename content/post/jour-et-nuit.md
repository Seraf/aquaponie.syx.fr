+++
topics = ["Travaux","Electronique"]
date = "2017-05-12T18:34:21+02:00"
tags = ["serre","electronique","monitoring","travaux"]
title = "Jour et nuit, soleil et pluie"
description = "Préparation du terrain pour y construire ma serre et réalisation de l'électronique allant être embarqué"
truncated = false
+++
{{< pswp-init >}}

En ce moment je n'ai que mon projet en tête !

A tel point que dès que j'ai un rayon de soleil sur mon temps libre, je vais m'occuper du jardin.
J'ai fini d'arracher les arbres et j'ai commencé à motoculter le terrain.

{{< figure link="/post/img/jour-et-nuit/coin-du-jardin.jpg" thumb="-thumb" >}}

Et dès qu'il pleut (comme c'est le cas souvent en ce moment) ou qu'il fait nuit .. bref, quand je ne suis pas dans le jardin, je joue avec le materiel [électronique]({{< relref "equipement.md#electronique" >}}) que j'ai reçu il y a quelques jours.

{{< figure link="/post/img/jour-et-nuit/electronique.jpg" thumb="-thumb" >}}

Je décrirais plus tard dans un tutorial toutes les procédures à suivre etc. Pour l'instant j'ai mis cela en [opensource](https://github.com/Seraf/greenhouse) dans un repository github.

Pour décrire brievement le fonctionnement, j'ai un [raspberry pi](https://www.raspberrypi.org/) tournant sur une distribution [raspbian](https://raspbian-france.fr/) qui a un daemon [docker](https://www.docker.com/) d'installé.

Dans un container docker, s'éxecute un programme appellé [telegraf](https://www.influxdata.com/telegraf/) qui va interroger le capteur d'humidité/temperature (et bientot il y aura PH, bref des possibilités infinies) et envoyer les données dans une base de données.

Concernant cette base de données, celle ci réside sur un serveur stocké dans mon grenier. Il fait tourner un [RancherOS](http://rancher.com/rancher-os/), donc tout fonctionne a base de container et me permet d'aisement prototyper, sauvegarder et dupliquer. Sur ce serveur tourne donc une base de données [influxdb](https://www.influxdata.com/influxdb/) et un [grafana](https://grafana.com/) pour l'affichage des graphiques.

{{< figure link="/post/img/jour-et-nuit/serre-data.png" thumb="-thumb" >}}

En poussant les choses un peu plus loin avec d'autres capteurs, voir meme actionneurs, on peut tout automatiser (mais ce n'est pas tellement mon objectif, je prefere me concentrer sur la surveillance).

Grafana permet également d'envoyer des alertes, on peut donc imaginer par exemple que je reçoive une alerte des que mon Ph diffère des seuils fixés.

J'ai reçu ma serre hier, il faut donc que d'ici Juin (au moment où j'aurais l'autorisation pour la monter), j'ai fini de creuser le bassin, égalisé le terrain et amené l'électricité ... bref, du boulot !