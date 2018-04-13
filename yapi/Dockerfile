FROM node:9-alpine

RUN npm install -g yapi-cli \
    && apk update && apk add --no-cache make python git

WORKDIR /yapi

CMD ["yapi", "server"]