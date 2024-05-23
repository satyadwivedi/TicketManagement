# syntax=docker/dockerfile:1
ARG NODEVERSION="18"
ARG CAPVER="7.2"

FROM node:${NODEVERSION}
# or use `FROM node:<NODEVERSION>` to match a specific Node version
# you have installed locally

USER node
ENV NPM_CONFIG_PREFIX=/home/node/.npm
ENV PATH=$NPM_CONFIG_PREFIX/bin:$PATH

RUN npm i -g @sap/cds-dk