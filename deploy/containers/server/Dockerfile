# Using PM2 build of alpine so we don't have to set it up
FROM keymetrics/pm2:12-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY ./package.json ./
COPY ./lerna.json ./
COPY ./yarn.lock ./

# Bundle server source
COPY ./packages/server ./packages/server

# Building code for production
ENV NPM_CONFIG_LOGLEVEL warn
RUN yarn install --production

# Open incoming port 3000 for Node.js
EXPOSE 3000

# Log folder structure
RUN ls -la

# Run server
CMD yarn run server:start