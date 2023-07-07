FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    autoconf \
    automake \
    binutils-gold \
    ca-certificates \
    curl \
    faketime \
    git \
    libtool \
    pkg-config \
    python \
    bison \
    build-essential  \
    autotools-dev  \
    libssl-dev \
    libevent-dev \
    bsdmainutils \
    libboost-system-dev  \
    libboost-filesystem-dev  \
    libboost-chrono-dev  \
    libboost-program-options-dev  \
    libboost-test-dev  \
    libboost-thread-dev \
    libqt5gui5  \
    libqt5core5a  \
    libqt5dbus5  \
    qttools5-dev  \
    qttools5-dev-tools  \
    libprotobuf-dev  \
    protobuf-compiler  \
    libqrencode-dev

RUN git clone https://github.com/dogecoin/dogecoin /dogecoin

WORKDIR /dogecoin

RUN ./autogen.sh \
    && ./configure \
    && make

RUN make install

CMD ["dogecoind"]