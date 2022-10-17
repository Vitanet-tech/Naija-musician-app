FROM node:9
WORKDIR /app
RUN npm install -g nodemon
RUN npm config set registry http://registry.npmjs.org
RUN npm install && npm ls
RUN mv /app/node_modules /node_modules
COPY package.json /app
COPY . /app
EXPOSE 3000
CMD ("npm","app.js")
