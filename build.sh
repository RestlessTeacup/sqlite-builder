#!/bin/bash

# Прерывать выполнение при ошибке
set -e

# Установка базовых утилит
sudo apt update
sudo apt install -y \
    wget \
    unzip \
    cmake \
    gcc

# Загрузка SQLite
wget https://www.sqlite.org/2018/sqlite-amalgamation-3260000.zip

# Распаковка в папку sqlite-src без вложенных директорий
unzip -j -o sqlite-amalgamation-3260000.zip -d sqlite-src

# Генерация Makefile и компиляция
cmake . && make