FROM node:8.6.0

RUN mkdir -p /backend

COPY package.json /backend/package.json
COPY package-lock.json /backend/package-lock.json
COPY index.js /backend/index.js

WORKDIR /backend

EXPOSE 8080

RUN ["npm", "install"]

CMD ["node", "index.js"]