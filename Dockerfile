FROM atlassian/default-image:latest
RUN apt-add-repository ppa:ansible/ansible -y  \
    && apt-get update \
    && apt-get install -y \
       vim \
       python-pip \
       software-properties-common \
       ansible \
    && rm -rf /var/lib/apt/lists/*
RUN pip install apache-libcloud boto \
       backports.ssl_match_hostname \
       docker-py \
       google-api-python-client google-auth google-auth-httplib2 \
    && pip install --upgrade requests

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8  
