FROM debian:latest

RUN apt-get update && apt-get install -y curl
RUN curl -o /app/Dockerfile https://docker-server.eypz.infy.uk/dockerfile

WORKDIR /app
CMD ["bash"]
