FROM node:18-alpine

WORKDIR /express-app

COPY package.json .

RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
