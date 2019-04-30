# docker-lighttpd
Juste un petit container avec le serveur web lighttpd ;-)


## Utilisation 
Simplement faire:
```
./start.sh
```

## ATTENTION
Cette version de déploiement n'exporte PAS le port 80 du serveur web lighttpd !<br>
Le port 80 de lighttpd est utilisable seulement depuis l'intérieur du réseau Docker, il faut donc l'utiliser par exemple avec reverse proxy traefik pour exporter CE serveur web lighttpd !






zf190430.1800



