FROM node:16-alpine

# Create app directory for bot
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy app and install dependencies for bot
COPY . /usr/src/app
RUN npm install

CMD echo "{\"token\": \"$BOT_TOKEN\",\"application_id\": \"$APPLICATION_ID\"}" > config.json && npm run bot
