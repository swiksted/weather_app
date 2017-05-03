#Use FROM instruction to use a suitable docker image as base (browse docker hub)
FROM debian:latest

ADD . /code
WORKDIR /code

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.utf8

RUN apt-get update && apt-get install -y python npm nodejs-legacy

WORKDIR /code/backend
RUN npm i && npm start

WORKDIR /code/frontend
RUN npm i && npm start