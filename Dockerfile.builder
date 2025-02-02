FROM debian:bullseye-slim
WORKDIR /app

RUN apt update && apt install -y \
    gcc \
    g++ \
    cmake \
    wget \
    unzip \
    build-essential && \
    rm -rf /var/lib/apt/lists/*  # Очистка кеша

RUN wget https://www.sqlite.org/2018/sqlite-amalgamation-3260000.zip
RUN unzip -j sqlite-amalgamation-3260000.zip -d sqlite-src

COPY CMakeLists.txt .

RUN cmake . && make > build.log 2>&1