FROM node:9
WORKDIR /app
COPY package.json /app
RUN npm cache clean
RUN npm install
COPY . /app
EXPOSE 3000
CMD ("npm","start")