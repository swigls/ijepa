FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel

# install normal source
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        g++ \
        make \
        automake \
        autoconf \
        bzip2 \
        unzip \
        wget \
        sox \
        libtool \
        git \
        subversion \
        zlib1g-dev \
        gfortran \
        ca-certificates \
        patch \
        ffmpeg \
        valgrind \
		libssl-dev \
	    vim \
		curl

# cmake
RUN wget -P /opt https://cmake.org/files/v3.18/cmake-3.18.0.tar.gz && \
    cd /opt && \
    tar -zxvf cmake-3.18.0.tar.gz && \
    cd cmake-3.18.0 && \
    ./bootstrap && \
    make && \
    make install && \
    rm -rf cmake-3.18.0.tar.gz && \
    find /opt/cmake-3.18.0 -type f \( -name "*.o" -o -name "*.la" -o -name "*.a" \) -exec rm {} \; && \
    cd -

# flac
RUN wget -P /opt https://downloads.xiph.org/releases/flac/flac-1.3.2.tar.xz  && \
    cd /opt && \
    xz -d flac-1.3.2.tar.xz && \
    tar -xvf flac-1.3.2.tar && \
    cd flac-1.3.2 && \
    ./configure && \
    make && make install && \
    rm -rf flac-1.3.2.tar && \
    find /opt/flac-1.3.2  -type f \( -name "*.o" -o -name "*.la" -o -name "*.a" \) -exec rm {} \; && \
    cd -



# ENV PYTHONPATH /opt/icefall:$PYTHONPATH

# ENTRYPOINT cd /opt/k2; \
#     git checkout -- .; \
#     git pull; \
#     git checkout encoder_pred; \
#     cd -; \
#     export PYTHONPATH=/opt/k2/k2/python:$PYTHONPATH; \
#     export PYTHONPATH=/opt/k2/build_debug/lib:$PYTHONPATH; \
#     /opt/nvidia/nvidia_entrypoint.sh
    

# WORKDIR /workspace/icefall
