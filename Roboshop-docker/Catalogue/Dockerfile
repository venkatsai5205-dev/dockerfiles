FROM node:20
WORKDIR /opt/server
COPY package.json .
COPY *.js .
RUN npm install
ENV MONGO="true"\
    MONGO_URL="mongodb://stupefied_wilbur:27017/catalogue"

CMD ["node","server.js"]
