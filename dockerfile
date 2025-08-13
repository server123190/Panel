FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

# Install tmate
RUN apt-get update && apt-get install -y tmate && rm -rf /var/lib/apt/lists/*

# Default command to run tmate in foreground
CMD ["tmate", "-F"]
