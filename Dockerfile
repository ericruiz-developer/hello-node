FROM node:alpine

WORKDIR /app
RUN pwd && ls
COPY ['package.json', "./app/"]
RUN npm install && npm cache clean --force
COPY . ./

RUN npm start