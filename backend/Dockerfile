#Use FROM instruction to use a suitable docker image as base (browse docker hub)
FROM node:latest

ENV APPID=7093bd26ea2ca1f8800f9af6f7597134

ADD . /code
WORKDIR /code

ENV LANG en_US.utf8

#RUN yum install epel-release -y
#RUN yum update -y && yum install nodejs -y

EXPOSE 9000

WORKDIR /code/backend
RUN npm i && npm start

