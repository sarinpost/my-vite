# FROM node:latest as build-stage-1
# WORKDIR /app
# COPY bk/package*.json ./
# RUN yarn install
# COPY ./bk .
# RUN yarn build --mode development

# FROM node:latest as build-stage-2
# WORKDIR /app
# COPY jarton/package*.json ./
# RUN yarn install
# COPY ./jarton .
# RUN yarn build --mode development

# FROM nginx:alpine as production-stage
# RUN mkdir /app && cd app && mkdir jarton && mkdir bk
# COPY --from=build-stage-1 /app/dist /app/bk
# COPY --from=build-stage-2 /app/dist /app/jarton
# RUN ls -l /app
# COPY nginx.conf /etc/nginx/nginx.conf

FROM node:latest as build-stage-1
WORKDIR /app
COPY ./package.json ./
RUN yarn install
COPY . ./
RUN yarn build --mode development

FROM nginx:alpine as production-stage
WORKDIR /var/www
COPY --from=build-stage-1 /app/dist .
COPY nginx.conf /etc/nginx/nginx.conf

