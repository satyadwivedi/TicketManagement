# syntax=docker/dockerfile:1
ARG NODEVERSION="20.9.0"
ARG CAPVER="7.2.0"

FROM node:${NODEVERSION}-apline
# or use `FROM node:<NODEVERSION>` to match a specific Node version
# you have installed locally

WORKDIR /app
COPY . .
RUN npm install --production

USER node
#ENV NPM_CONFIG_PREFIX=/home/node/.npm
#ENV PATH=$NPM_CONFIG_PREFIX/bin:$PATH

RUN npm i -g @sap/cds-dk
CMD ["npm", "start"]
EXPOSE 4004