FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install @babel/plugin-proposal-private-property-in-object
RUN npm install @babel/plugin-proposal-private-property-in-object

# Install other dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Default command to run the application
CMD ["sh", "-c", "npm install @babel/plugin-proposal-private-property-in-object && npm start"]