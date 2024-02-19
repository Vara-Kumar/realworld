FROM node:16-alpine3.11 as angular
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
FROM httpd:apline3.15
WORKDIR /usr/local/apache2/htdocs
COPY --from-angular /app/dist/realworld .

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

# Stage 1: Build the Angular application
#FROM node:18

#WORKDIR /app

# Install dependencies globally
#RUN npm install -g @nrwl/cli

# Copy package.json and package-lock.json to the container
#COPY package*.json ./

# Install dependencies
#RUN npm install --legacy-peer-deps

# Copy the rest of the application code to the container
#COPY . .

# Build the Angular application with production configuration
#RUN nx build --prod

# Stage 2: Serve the Angular application using NGINX
#FROM nginx:alpine

# Copy the built Angular application from the builder stage to NGINX directory
#COPY --from=builder /app/dist/ /usr/share/nginx/html

# Expose port 80
#EXPOSE 80

# Command to start NGINX server
#CMD ["nginx", "-g", "daemon off;"]



