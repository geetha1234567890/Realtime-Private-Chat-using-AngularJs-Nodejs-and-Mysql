# Stage 1: Build Angular app
FROM node:14 as build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install -g @angular/cli
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Angular application
RUN ng build --prod

# Stage 2: Serve app with NGINX
FROM nginx:alpine

# Copy the built Angular app from the previous stage
COPY --from=build /app/dist/client /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
