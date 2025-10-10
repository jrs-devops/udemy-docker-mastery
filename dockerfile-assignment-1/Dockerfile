# use this empty Dockerfile to build your assignment

# NOTE: The instructions are now in the README.md file in this directory.

FROM node:6-alpine

# Install tini for proper signal handling
RUN apk add --no-cache tini

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install . && npm cache clean --force

# ✅ Copy the rest of your app (this was missing)
COPY . .

# Expose ports (depends on your app)
EXPOSE 3000

# Run your app with tini
CMD ["/sbin/tini", "--", "node", "./bin/www"]