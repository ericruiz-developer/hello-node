FROM node:alpine

RUN pwd && ls
ADD . ./app
RUN npm install && npm cache clean --force

RUN npm start