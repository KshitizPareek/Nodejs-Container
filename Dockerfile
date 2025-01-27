# Use the official Node.js image from Docker Hub
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (if exists)
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose port 3000 to allow traffic to the application
EXPOSE 3000

# Set the default command to run the Node.js server
CMD ["npm", "start"]
