FROM nvidia/cuda:10.2-cudnn8-devel-ubuntu18.04

# update the apt package index
RUN apt update && \
    apt install -y bash \
    build-essential \
    git \
    curl \
    ca-certificates \
    python3 \
    python3-pip && \
    rm -rf /var/lib/apt/lists

# update pip
RUN python3 -m pip install --no-cache-dir --upgrade pip

# set working directory
WORKDIR /workspace

# copy requirements.txt
COPY requirements.txt /tmp/requirements.txt

# install requirements 
RUN python3 -m pip install --no-cache-dir -r /tmp/requirements.txt

CMD ["/bin/bash"]