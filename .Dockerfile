# Use an official Node.js runtime as the base image
FROM node:lts-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy the rest of the application code to the container
COPY . .

# Build the React app
RUN npm run build

# Expose the port on which the app will run (default is 3000 for React)
EXPOSE 3000

# Set the command to start the app when the container starts
CMD [ "npm", "start" ]