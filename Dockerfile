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


#RUN mkdir -p /hello_world/

#Use COPY instruction to copy your code file into the container.
#COPY hello_bash.sh /hello_world/
#COPY hello_python.py /hello_world/


# Shouldn't be needed? Changing source file perms is enough?'
# RUN chmod a+x /hello_world/hello_bash.sh 

#Use ENTRYPOINT instruction to your chosen language & script.
#ENTRYPOINT /hello_world/hello_bash.sh $0

#The submission engine will place your submitted files into a folder and run build + tests.