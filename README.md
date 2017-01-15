# berney/sqlmap

Dockerized sqlmap from github (git)

Image is based on the alpine base image

This repository is based off [k0st/alpine-sqlmap](https://github.com/kost/docker-webscan/tree/master/alpine-sqlmap) and [tuxtimo/sqlmap](https://github.com/timofurrer/docker-sqlmap).


## Docker image size

[![Latest](https://badge.imagelayers.io/k0st/alpine-sqlmap-git.svg)](https://imagelayers.io/?images=berney/sqlmap:latest 'latest')

## Docker Image Build

```
cd docker-sqlmap
docker build --rm -t berney/sqlmap .
```

OR

```
cd docker-sqlmap
make build
```

## Docker Image Usage

```
docker run -it --rm -v sqlmap-data:/work berney/sqlmap -s /work/session.sqlite -u http://scanme.nmap.com/?id=1 -p id
```

OR

```
make run
```

