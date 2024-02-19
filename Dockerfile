#FROM node:latest
#RUN mkdir -p /opt/app
#WORKDIR /opt/app
#COPY . .
#RUN npm install
#EXPOSE 3000
#CMD [ "npm", "start"]

# Use the official Node.js 14 image as the base image
#FROM node:18
#WORKDIR /app
#COPY package.json package-lock.json ./
#RUN npm install -g npm@latest
#COPY . .
#RUN npm install -g @nrwl/cli
#RUN nx build
#EXPOSE 3000
#CMD ["npm", "start"]

# Use the official Node.js image as the base image
FROM node:14
# Set the working directory inside the container
WORKDIR /usr/src/app
# Copy package.json and package-lock.json to the container
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application code to the container
COPY . .
# Build the application
RUN npm run nx build realworld --configuration=production
# Expose the port your app runs on
EXPOSE 3000
# Command to run the application
CMD ["npm", "run", "nx", "serve", "realworld", "--host", "0.0.0.0"]

