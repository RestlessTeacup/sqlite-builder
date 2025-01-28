FROM debian:bullseye-slim

RUN apt update && apt install -y \
    gcc \
    cmake \
    wget \
    unzip && \
    rm -rf /var/lib/apt/lists/*  # Очистка кеша

RUN wget https://www.sqlite.org/2018/sqlite-amalgamation-3260000.zip
RUN unzip -j sqlite-amalgamation-3260000.zip -d sqlite-src

COPY CMakeLists.txt .

RUN cmake . && make