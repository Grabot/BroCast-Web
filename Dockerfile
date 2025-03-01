FROM node:23-alpine

WORKDIR /

COPY . .
RUN npm install
RUN npm run build
RUN npm prune --production # Remove dev dependencies

EXPOSE 32769
ENV HOST=0.0.0.0

CMD [ "npm", "start" ]