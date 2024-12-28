# Builder
FROM node:16.17.0 as builder
WORKDIR /src
COPY . /src

# App
RUN cd /src
RUN npm install
ARG SESSION_SECRET=abc123
ENV SESSION_SECRET=${SESSION_SECRET}
RUN echo "SESSION_SECRET=${SESSION_SECRET}" > .env
RUN npm run build

CMD npm start
