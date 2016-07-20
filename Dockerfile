FROM node:4
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
RUN npm install -g http-server
RUN npm install -g grunt-cli
COPY . /usr/src/app
RUN grunt fastBuild
EXPOSE 8080
CMD http-server
