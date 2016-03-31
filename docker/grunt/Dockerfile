FROM node:latest

MAINTAINER Hélain Schoonjans helain90@hotmail.com

WORKDIR /home/app
ADD . /home/app

RUN \
    apt-get update && \
    apt-get install --yes ruby-dev && \
    apt-get install --yes rubygems && \
    gem install compass && \
    npm install -g bower coffee-script grunt-cli && \
    bower install --config.interactive=false --allow-root && \
    npm install && \
    npm run-script coffee-compile

EXPOSE 9000

CMD ["grunt", "serve"]
