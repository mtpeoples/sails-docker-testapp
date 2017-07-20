FROM node

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN rm -Rf /usr/src/app/node_modules && npm install

EXPOSE 1337

CMD ["npm", "start"]