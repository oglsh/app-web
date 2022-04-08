FROM node:12
WORKDIR /usr/scr/app
COPY package*.json ./

RUN npm install
RUN apk add -U subversion
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]