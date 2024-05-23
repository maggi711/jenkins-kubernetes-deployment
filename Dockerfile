FROM node:18.20.2-alpine3.19

WORKDIR /app

COPY ./src/package.json .

RUN npm install

COPY ./src/ .

EXPOSE 3000

CMD [ "npm", "start" ]