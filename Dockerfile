FROM node:alpine

WORKDIR /app
COPY ['package.json', "./app/"]
RUN npm install && npm cache clean --force
COPY . ./

RUN npm start