FROM node:14.17.0
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --quiet
COPY . .
CMD npm run start:dev