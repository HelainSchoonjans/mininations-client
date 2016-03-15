FROM node:latest

MAINTAINER Hélain Schoonjans helain90@hotmail.com

WORKDIR /home/app

ADD . /home/app

# Install dependencies
RUN \
    npm install -g bower && \
    npm install && \
    bower install --config.interactive=false --allow-root

EXPOSE 9000

CMD ["node", "server/app.js"]
