# Use a base image that has Node.js installed
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the rest of the application code to the container
COPY . .

# Install the project dependencies
RUN yarn install

WORKDIR /app/example

# Build the React application for production
RUN yarn run build

# Expose the default port for serving the React application
EXPOSE 3000

# Specify the command to run when the container starts
CMD [ "npm", "start" ]
