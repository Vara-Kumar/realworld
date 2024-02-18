#FROM node:latest
#RUN mkdir -p /opt/app
#WORKDIR /opt/app
#COPY . .
#RUN npm install
#EXPOSE 3000
#CMD [ "npm", "start"]

FROM node:18
WORKDIR app
COPY . .
RUN npm install -g npm@latest
EXPOSE 3000
CMD ["npm","start"]
