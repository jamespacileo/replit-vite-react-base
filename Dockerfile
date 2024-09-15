# Dockerfile

# Use an official Node runtime as a parent image
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Install Bun
RUN curl -fsSL https://bun.sh/install | bash

ENV BUN_INSTALL="/root/.bun"
ENV PATH="$BUN_INSTALL/bin:$PATH"

# Copy bun.lockb and package.json
COPY bun.lockb package.json ./

# Install dependencies
RUN bun install --production

# Copy the rest of the application code
COPY . .

# Build the application
RUN bun run build

# Expose the port
EXPOSE 5173

# Start the application
CMD ["bun", "run", "preview"]
