# .gitpod.Dockerfile

# Base the workspace on Ubuntu 20.04
FROM ubuntu:20.04

# Ensure apt is non-interactive
ENV DEBIAN_FRONTEND=noninteractive

# Update and install essential packages
RUN apt-get update && apt-get install -y \
  git \
  sudo \
  curl \
  wget \
  vim \
  build-essential \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker
CMD /bin/bash

# Set the default shell to bash
SHELL ["/bin/bash", "-c"]
