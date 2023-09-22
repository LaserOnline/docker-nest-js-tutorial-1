FROM node:18

WORKDIR /usr/src/app

COPY ./project.node.sh ./

RUN chmod +x ./project.node.sh && ./project.node.sh

WORKDIR /usr/src/app/nest-js-tutorial

RUN npm install

RUN npm run build

CMD [ "node", "dist/main.js" ]
