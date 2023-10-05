FROM ubuntu:latest

COPY q4_0.sh q4_0.sh

RUN apt-get -y update \
    && apt-get install -y git \
    && apt-get install -y make \
    && apt-get install -y gcc \
    && apt-get install -y g++ \
    && apt-get install -y python3 \
    && apt-get install -y python3-pip

# Install llama.cpp
RUN git clone https://github.com/ggerganov/llama.cpp \
    && cd llama.cpp \
    && make \
    && python3 -m pip install -r requirements.txt

WORKDIR /
