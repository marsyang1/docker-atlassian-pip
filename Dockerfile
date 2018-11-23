FROM atlassian/default-image:latest
RUN apt-get update \
    && apt-get install -y \
       python-pip \
       software-properties-common \
    && apt-add-repository ppa:ansible/ansible -y \
    && apt-get update && sudo apt-get install ansible \
    && rm -rf /var/lib/apt/lists/*
  
# Default to UTF-8 file.encoding
ENV LANG C.UTF-8  
