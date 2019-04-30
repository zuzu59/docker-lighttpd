#!/bin/bash 
#Petit script pour démarrer tout le binz zf190430.1700

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

#source: https://hub.docker.com/r/sebp/lighttpd


mkdir log
sudo chown 100.101 log

docker network create traefik
#docker-compose up
docker-compose up -d
docker-compose logs -f


echo -e "

pour voir les logs en continu:
docker-compose logs -f

pour voir qu'est-ce qui tourne:
docker-compose ps

pour 'entrer' dans le container:
docker-compose exec lighttpd /bin/sh

pour arrêter:
docker-compose stop

pour redémarrer après un 'stop':
docker-compose start

pour enlever les container mais pas les datas:
docker-compose down

pour enlever les container ET aussi les datas:
docker-compose down -v --remove-orphans


"
