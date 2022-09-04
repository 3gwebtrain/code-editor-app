FROM node:16.17.0-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package*.json ./

RUN  npm install --slient --legacy-peer-deps

COPY . ./

CMD ["npm", "start"]