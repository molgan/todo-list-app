FROM node:12-alpine
WORKDIR /todo-list-app
COPY package.json yarn.lock todo-list-app/
RUN yarn install --production
COPY . .
CMD ["node", "/todo-list-app/src/index.js"]
