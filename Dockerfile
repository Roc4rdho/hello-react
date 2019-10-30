FROM node:latest

WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle source code inside container
COPY . .

# PORT
EXPOSE 8080

CMD ["npm", "start"]