FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS my-test-cluster.s2kn33o.mongodb.net
ENV MONGODB_USERNAME yemifirefox
ENV MONGODB_PASSWORD JgLTIinsjsQnat7Y

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]