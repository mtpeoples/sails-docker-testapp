FROM node

RUN npm install -g sails grunt bower pm2 npm-check-updates
COPY . /src
WORKDIR /src
RUN npm install /src

VOLUME ["/src"]

EXPOSE 1337
