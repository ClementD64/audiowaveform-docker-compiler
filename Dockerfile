FROM debian:buster-slim

# install dependencies
RUN apt-get update
RUN apt-get install -y wget git make cmake gcc g++ libmad0-dev \
    libid3tag0-dev libsndfile1-dev libgd-dev libboost-filesystem-dev \
    libboost-program-options-dev libboost-regex-dev

# clone audiowaveform
RUN git clone https://github.com/bbc/audiowaveform.git a
WORKDIR /a

# build audiowaveform
RUN cmake -D BUILD_STATIC=1 -D ENABLE_TESTS=0
RUN make