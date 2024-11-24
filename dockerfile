# Use the official Node.js image.
FROM node:14

# Set the working directory in the container.
WORKDIR /app

# Copy package.json and package-lock.json (if available).
COPY package*.json ./

# Install application dependencies.
RUN npm install

# Copy the rest of the application code.
COPY . .

# Expose the application port.
EXPOSE 3000

# Start the application.
CMD ["npm", "start"]
