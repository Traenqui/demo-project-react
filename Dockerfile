FROM node:20.18-alpine3.20 AS base
LABEL authors="jgerber"

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "run", "dev" ]
