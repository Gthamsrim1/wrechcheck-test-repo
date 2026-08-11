FROM node:22

WORKDIR /app

COPY . .

USER node

CMD ["npm", "start"]