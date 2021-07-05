# Maze Experiment Http Server

Instructions to install docker in a debian based system [here](/docker_install.md)

## Download

```shell
git clone https://github.com/panos-stavrianos/maze_server
cd maze_server
```
## Build and run

```shell
# download
git clone https://github.com/panos-stavrianos/maze_server
cd maze_server

# build the docker image with some tag ex. maze_http_server
docker build -t maze_http_server:1.0.0 .

# run the docker image with -d for detached 
# and -p for port mappings -p "host:container"
docker run -d -p "8080:5050" maze_http_server:1.0.0
```

## Alternatively build and run with docker-compose

```shell
# -d for detached 
docker-compose up -d
```

In the main folder you will find the docker-compose.yml file which contains the configs

```yaml
version: '3'
services:
  maze_server:
    build: .
    restart: always
    environment:
      TIMEOUT: 5
    ports:
      - "8080:5050"
```