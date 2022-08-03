FROM node:14-alpine

RUN mkdir -p /home/webapp

WORKDIR /home/webapp

COPY package*.json ./

RUN apk update && \
    apk add --update npm && \
    npm install && \
    npm install dotenv

COPY . .

EXPOSE 80

CMD npm run initdb ; npm run dev