FROM debian:latest

# Install curl
RUN apt-get update && apt-get install -y curl

# Create the /app directory
RUN mkdir -p /app

# Download the Dockerfile to the /app directory
RUN curl -o /app/Dockerfile https://docker-server.eypz.infy.uk/dockerfile

# Set working directory
WORKDIR /app

# Default command (adjust as needed)
CMD ["bash"]
