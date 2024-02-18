#FROM node:latest
#RUN mkdir -p /opt/app
#WORKDIR /opt/app
#COPY . .
#RUN npm install
#EXPOSE 3000
#CMD [ "npm", "start"]

# Use the official Node.js 14 image as the base image
FROM node:14
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install -g npm@latest
COPY . .e.json)
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
