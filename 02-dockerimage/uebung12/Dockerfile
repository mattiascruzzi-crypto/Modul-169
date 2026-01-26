FROM node:14
WORKDIR /app
# Copy package.json and package-lock.json
COPY package.json ./
# Copy the rest of the application code
COPY server.js .
# Install dependencies
RUN npm install
# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]