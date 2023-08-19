FROM node:18-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
RUN npm run test
COPY . .
CMD ["npm","start"]
