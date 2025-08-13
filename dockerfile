FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install basic tools and tmate
RUN apt-get update && apt-get install -y \
    tmate \
    openssh-client \
    curl \
    wget \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user for safety
RUN useradd -ms /bin/bash devuser
USER devuser
WORKDIR /home/devuser

# Copy an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 22

ENTRYPOINT ["/entrypoint.sh"]
