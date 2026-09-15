# --- ESTAGIO 1: Build & Dependencias ---

FROM node:20-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# --- ESTAGIO 2: Imagem de producao leve ---

FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --only=production

COPY --from=build /app/server.js ./server.js

USER node

EXPOSE 3000

CMD ["node", "server.js"]
