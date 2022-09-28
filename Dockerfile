FROM node:lts-alpine

WORKDIR /usr/app
COPY package.json package-lock.json* ./

RUN npm install -g json-server

COPY . .
EXPOSE 80
CMD ["npm", "start"]
