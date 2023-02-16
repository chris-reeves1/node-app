# base image
FROM node:14.16-alpine

# set working directory
WORKDIR /app

# copy package.json and package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy app files
COPY . .

# expose port
EXPOSE 5000

# start app
CMD ["npm", "start"]
