FROM node:alpine

RUN mkdir -p /code
WORKDIR /code

COPY . /code
RUN npm install

EXPOSE 9000

CMD npm start
