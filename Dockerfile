FROM node:12.17.0

WORKDIR /app

RUN npm install

ENV PORT=3000

EXPOSE 3000

CMD [ "npm", "start" ]