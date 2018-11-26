FROM atlassian/default-image:latest
RUN apt-add-repository ppa:ansible/ansible -y  \
    && apt-get update \
    && apt-get install -y \
       python-pip \
       software-properties-common \
       ansible \
    && rm -rf /var/lib/apt/lists/*
RUN pip install apache-libcloud boto \
       google-api-python-client google-auth google-auth-httplib2

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8  
