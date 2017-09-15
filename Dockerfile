FROM node:alpine

WORKDIR /app
COPY ['package.json', "./"]
RUN npm install && npm cache clean --force
COPY . ./

RUN chmod 755 ./deploy.sh

RUN npm start