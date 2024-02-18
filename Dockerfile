#FROM node:latest
#RUN mkdir -p /opt/app
#WORKDIR /opt/app
#COPY . .
#RUN npm install
#EXPOSE 3000
#CMD [ "npm", "start"]

FROM node:12.2.0-alpine
WORKDIR app
COPY . .
RUN npm install
RUN npm run test
EXPOSE 3000
CMD ["npm","start"]
