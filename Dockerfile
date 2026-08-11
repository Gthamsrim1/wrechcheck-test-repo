FROM node:24-slim
WORKDIR /app
COPY . .

USER node

CMD ["npm", "start"]