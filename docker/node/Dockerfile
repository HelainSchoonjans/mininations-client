FROM node:latest

MAINTAINER Hélain Schoonjans helain90@hotmail.com

# Install Ruby
#RUN \
#  apt-get update && \
#  apt-get install -y ruby ruby-dev && \
#  rm -rf /var/lib/apt/lists/*

WORKDIR /home/app
ADD . /home/app

RUN \
    npm install -g bower && \
    npm install && \
    npm run-script coffee-compile

EXPOSE 9000

CMD ["node", "app/lib/app.js"]
