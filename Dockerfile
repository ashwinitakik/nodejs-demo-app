# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files from app/ subdir
COPY app/package*.json ./

# Install dependencies
RUN npm install

# Copy app source from app/ subdir
COPY app/app.js ./

# Expose port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
