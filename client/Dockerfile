# Stage 1: Build Angular app
FROM node:14 as build

# Set the working directory
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/geetha1234567890/Realtime-Private-Chat-using-AngularJs-Nodejs-and-Mysql .

# Navigate to the client directory
WORKDIR /app/client

# Install dependencies
RUN npm install -g @angular/cli
RUN npm install

# Build the Angular application
RUN ng build --prod

# Stage 2: Serve app with NGINX
FROM nginx:alpine

# Copy the built Angular app from the previous stage
COPY --from=build /app/client/dist/your-app-name /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
