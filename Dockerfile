FROM node:latest

COPY ./mywebsite /mywebsite

WORKDIR /mywebsite

RUN npm install -D vitepress

RUN npm install -g pm2

RUN npm run docs:build

EXPOSE 80

CMD ["npm", "run", "docs:serve"]