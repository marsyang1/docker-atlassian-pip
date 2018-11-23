FROM atlassian/default-image:latest
RUN apt-get update && apt-get install -y --no-install-recommends \
		bzip2 \
		unzip \
		xz-utils \
        python-pip \
	&& rm -rf /var/lib/apt/lists/*
  
# Default to UTF-8 file.encoding
ENV LANG C.UTF-8  
