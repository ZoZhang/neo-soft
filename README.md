# NEO|SOFT Docker Image

Lancer l'application WEB par Alpine Linux avec supervisor, mariadb, nginx , PHP-FPM etc.

## Pré-requis

Install and run Docker on your computer see https://docs.docker.com/docker-for-mac/install/

## Utilisation 

### 1. Avec ligne de commande par DockerHub
D'abord, vous devez passer en ligne de commande et récupérer docker image par DockerHub 

```
docker pull zozhang/neo_soft

```
Ensuite, vous pouvez lancer directement docker image

```
docker run --name application-dockerhub -d -p 3308:3308 zozhang/neo_soft
```
Après avoir lancé, vous pouvez aller http://localhost:3308 sur votre navicateur pour voir l'application web en PHP-MVC.

### 2. Avec ligne de commande par Github
D'abord, vous devez passer en ligne de commande et récupérer/extraire des fichers sur Github.

```
wget https://github.com/ZoZhang/neo_soft/archive/v1.0.zip

unzip v1.0.zip 
```
Ensuite, vous devez builder Docker Image.

```
cd v1.0
docker build -t neo_soft .
```
Et après, justement lance l'image et profite-la.

```
docker run --name application-github -d -p 3308:3308 neo_soft
```
Enfin,vous pouvez aller http://localhost:3308 sur votre navicateur pour voir l'application web en PHP-MVC.


