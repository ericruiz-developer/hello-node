FROM node:alpine

WORKDIR /app
COPY ['package.json', "./"]
RUN npm install && npm cache clean --force
COPY . ./

RUN npm start