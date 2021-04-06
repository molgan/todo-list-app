FROM node:12-alpine
WORKDIR /todo-list-app
COPY . .
RUN yarn install --production
CMD ["node", "/todo-list-app/src/index.js"]
