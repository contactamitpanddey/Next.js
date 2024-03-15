# Start from the latest Node.js base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install --force

# Copy the rest of the application code
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port your Next.js application listens on
EXPOSE 3000

# Run the Next.js application when the container starts
CMD ["npm", "start"]
