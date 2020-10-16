# Base image
FROM paveloom/binder-base:0.1.3

# Meta information
LABEL maintainer="Pavel Sobolev (https://github.com/Paveloom)"
LABEL version="0.1.2"
LABEL description="Basically, `paveloom/binder-base` + TeX dependencies."
LABEL github-repository="https://github.com/paveloom-d/binder-tex"
LABEL docker-repository="https://hub.docker.com/r/paveloom/binder-tex"

# Switch to the `root` user
USER root

# Copy the scripts to the root
COPY scripts /scripts

# Allow their execution
RUN chmod -R +x /scripts

# Temporarily disable prompts during the build
ARG DEBIAN_FRONTEND=noninteractive

# Install TeX dependencies
RUN /scripts/root/texlive/install-texlive.sh

# Switch back to the non-root user
USER $USER

# Install Python packages
RUN /scripts/user/python/install-python-packages.sh

# Remove scripts
RUN sudo rm -rf /scripts