FROM node:20-alpine

WORKDIR /app

COPY backend/package*.json ./
RUN npm install --omit=dev

COPY backend/app.js ./app.js
COPY backend/dataset.js ./dataset.js

ENV NODE_ENV=production
EXPOSE 3000

CMD ["node", "app.js"]
