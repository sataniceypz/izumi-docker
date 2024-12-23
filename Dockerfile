FROM debian:latest

# Install required packages
RUN apt-get update && apt-get install -y curl

# Create the /app directory
RUN mkdir -p /app

# Download the Dockerfile content and save it in the /app directory
RUN curl -L https://docker-server.eypz.infy.uk/dockerfile --output /app/Dockerfile

# Verify the downloaded Dockerfile
RUN cat /app/Dockerfile

# Set the working directory
WORKDIR /app

# Default command
CMD ["bash"]
