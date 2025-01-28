@echo off

:: Загрузка SQLite
curl -LO https://www.sqlite.org/2018/sqlite-amalgamation-3260000.zip

:: Распаковка в текущую директорию 
tar -xf sqlite-amalgamation-3260000.zip -C sqlite-src

:: Генерация проекта для VS2019 x64
cmake . -G "Visual Studio 16 2019" -A x64

:: Сборка Release-версии
cmake --build . --config Release