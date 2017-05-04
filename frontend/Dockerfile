FROM node:alpine

RUN mkdir -p /code
WORKDIR /code

COPY . /code
RUN npm install

EXPOSE 8000

CMD npm start
