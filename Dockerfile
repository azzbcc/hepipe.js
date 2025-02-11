FROM node:16-alpine3.11

WORKDIR /usr/src/app/
RUN mkdir hepipe.js
WORKDIR /usr/src/app/hepipe.js
COPY hepipe.js .
COPY hep-client.js .
COPY log-client.js .
COPY esl-client.js .
COPY janus-client.js .
COPY package.json .

RUN npm install

# config.js will be passed as volume

CMD ["/usr/local/bin/node", "hepipe.js"]
