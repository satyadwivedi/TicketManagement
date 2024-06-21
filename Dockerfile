ARG NODEVERSION="20.9.0"
FROM node:${NODEVERSION}
#FROM node:lts
# or use `FROM node:<NODEVERSION>` to match a specific Node version
# you have installed locally
WORKDIR /app
COPY . .

USER node
ENV NPM_CONFIG_PREFIX=/home/node/.npm
ENV PATH=$NPM_CONFIG_PREFIX/bin:$PATH

RUN npm i -g @sap/cds-dk
#WORKDIR /home/node
EXPOSE 40004
CMD ["npm", "start"]