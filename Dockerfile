FROM atlassian/default-image:latest
RUN RUN apt-get update \
    && apt-get install -y \
        python-pip \
    && rm -rf /var/lib/apt/lists/*
  
# Default to UTF-8 file.encoding
ENV LANG C.UTF-8  
