FROM n8nio/n8n
RUN apk add --no-cache \
    openssh-client \
    chromium \
    curl
RUN mkdir /www && chmod 777 /www
WORKDIR /usr/local/lib/node_modules
#RUN sed -i 's/timestamptz/timestamp/g' /usr/local/lib/node_modules/n8n/dist/src/databases/utils.js
RUN npm install ws crypto-js async lodash puppeteer tweetnacl discord.js discord-user-bots
