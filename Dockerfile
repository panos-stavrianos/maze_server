# syntax=docker/dockerfile:experimental
FROM python:3.8-slim

WORKDIR /usr/data
RUN mkdir -p /usr/app-data

COPY requirements.txt /usr/src/app/requirements.txt
WORKDIR /usr/src/app
RUN pip install -r requirements.txt

COPY ./ /usr/src/app

EXPOSE 5050

CMD gunicorn server:app

# DOCKER_BUILDKIT=1 docker build -t comet.app.orbitsystems.gr/maze_http_server:1.0.0 .
# docker run -p "5050:5050" comet.app.orbitsystems.gr/maze_http_server:1.0.0
# docker push comet.app.orbitsystems.gr/maze_http_server:1.0.0