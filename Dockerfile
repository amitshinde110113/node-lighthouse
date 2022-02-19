FROM node:alpine
WORKDIR /app
RUN apk add chromium
# install app dependencies
COPY package*.json .
RUN npm install
COPY . . 
EXPOSE 4000
CMD npm start