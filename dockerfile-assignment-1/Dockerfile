# use this empty Dockerfile to build your assignment

# NOTE: The instructions are now in the README.md file in this directory.

FROM node:6-alpine

RUN apk add --no-cache tini

WORKDIR /usr/src/app

COPY ./package.json .

EXPOSE 3000 80

RUN npm install . \
    && npm cache clean --force

CMD ["/sbin/tini","-- node","./bin/www"]