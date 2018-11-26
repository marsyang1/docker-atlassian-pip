FROM atlassian/default-image:latest
# prepare gcp tool variable , see https://cloud.google.com/sdk/docs/downloads-apt-get
RUN export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" \
    && echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -       
RUN apt-add-repository ppa:ansible/ansible -y  \
    && apt-get update \
    && apt-get install -y \
       vim \
       python-pip \
       software-properties-common \
       google-cloud-sdk \
       ansible \
    && rm -rf /var/lib/apt/lists/*    
# clean list    
RUN pip install apache-libcloud boto \
       backports.ssl_match_hostname \
       docker-py \
       google-api-python-client google-auth google-auth-httplib2 \
    && pip install --upgrade requests

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8  
