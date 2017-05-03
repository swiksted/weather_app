#Use FROM instruction to use a suitable docker image as base (browse docker hub)
FROM node:latest

ADD . /code
WORKDIR /code

ENV LANG en_US.utf8

#RUN yum install epel-release -y
#RUN yum update -y && yum install nodejs -y

EXPOSE 8000

WORKDIR /code/frontend
RUN npm i && npm start


