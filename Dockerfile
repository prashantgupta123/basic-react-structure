# base image
FROM node:12.2.0-alpine

# set working directory
WORKDIR /spring-hibernate-frontend

# add `/app/node_modules/.bin` to $PATH
ENV PATH /spring-hibernate-frontend/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /spring-hibernate-frontend/package.json
RUN npm install --silent

# start app
CMD ["npm", "start"]
