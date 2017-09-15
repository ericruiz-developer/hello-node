FROM node:alpine

ADD . ./app
RUN pwd && ls ./app
RUN npm install && npm cache clean --force

RUN npm start