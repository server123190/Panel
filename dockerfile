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

tmate
