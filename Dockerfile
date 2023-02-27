FROM node:14@sha256:eb709cd9ccbc70f194353d7f4227c52406a9dc6714d798666252d14e344422b2

WORKDIR /usr/src/app

COPY package.json .
RUN npm install 
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
