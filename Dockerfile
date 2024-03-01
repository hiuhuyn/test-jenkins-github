FROM node:latest

EXPOSE 3000

WORKDIR /app

ADD docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

COPY package.json package-lock.json ./

RUN npm config set registry https://registry.npmjs.org/


RUN npm install

COPY . .

CMD [ "node", "server.js" ]