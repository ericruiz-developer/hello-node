FROM node:alpine

WORKDIR /app
ADD . /app
RUN pwd && ls
RUN npm install && npm cache clean --force