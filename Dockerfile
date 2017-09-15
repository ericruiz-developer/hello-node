FROM node:alpine

ADD . ./app
RUN cd /app && pwd && ls .
RUN npm install && npm cache clean --force

RUN npm start