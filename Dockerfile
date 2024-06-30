# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/geetha1234567890/Realtime-Private-Chat-using-AngularJs-Nodejs-and-Mysql .

# Navigate to the server directory
WORKDIR /app/server

# Install dependencies
RUN npm install

# Expose port 3000
EXPOSE 3000

# Start the Node.js application
CMD ["node", "app.js"]
