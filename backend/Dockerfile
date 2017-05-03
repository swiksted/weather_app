#Use FROM instruction to use a suitable docker image as base (browse docker hub)
FROM centos:latest

ADD . /code
WORKDIR /code

ENV LANG en_US.utf8

RUN yum install epel-release -y
RUN yum update -y && yum install nodejs -y

WORKDIR /code/backend
RUN npm i && npm start