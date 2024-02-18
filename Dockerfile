#FROM node:latest
#RUN mkdir -p /opt/app
#WORKDIR /opt/app
#COPY . .
#RUN npm install
#EXPOSE 3000
#CMD [ "npm", "start"]

FROM node:14
WORKDIR app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node","start"]
