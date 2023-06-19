FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS my-test-cluster.3zme4e8.mongodb.net
ENV MONGODB_USERNAME yemifirefox
ENV MONGODB_PASSWORD fCM1zE1d66yfcOaT

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]