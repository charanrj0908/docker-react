#base image
FROM node:14-alpine

WORKDIR /usr/app

#installing dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./
#start up command

CMD ["npm", "start"]