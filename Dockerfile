FROM node:latest

EXPOSE 3000

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm config set registry https://registry.npmjs.org/

RUN ["chmod", "+x", "/usr/src/app/docker-entrypoint.sh"]

RUN npm install

COPY . .

CMD [ "node", "server.js" ]