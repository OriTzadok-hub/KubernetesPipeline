FROM node:14-alpine

RUN mkdir -p /home/webapp

COPY . /home/webapp

WORKDIR /home/webapp

RUN apk update && \
    apk add --update npm && \
    npm install && \
    npm install dotenv

CMD npm run dev