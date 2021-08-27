FROM debian

RUN apt-get update && apt-get install nodejs npm -y

WORKDIR /app

COPY ./web/. .

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]
