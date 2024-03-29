FROM node:latest

EXPOSE 3000

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm config set registry https://registry.npmjs.org/


RUN npm install

COPY . .

CMD [ "node", "server.js" ]