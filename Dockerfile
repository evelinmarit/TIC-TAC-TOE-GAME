# syntax=docker/dockerfile:1

FROM node:21.6.2-alpine3.19
WORKDIR /TIC-TAC-TOE-GAME/
COPY public/ /TIC-TAC-TOE-GAME/public
COPY src/ /TIC-TAC-TOE-GAME/src
COPY package.json /TIC-TAC-TOE-GAME/
RUN npm install --verbose
CMD ["npm", "start"]
EXPOSE 3000
