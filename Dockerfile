
# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of code
COPY . .

# Expose port (if needed)
EXPOSE 3000

# Start app
CMD ["node", "app.js"]
