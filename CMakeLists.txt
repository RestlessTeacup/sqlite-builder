# Требуемая версия CMake
cmake_minimum_required(VERSION 3.5)

# Имя проекта
project(sqlite)

# Сборка динамической библиотеки
add_library(sqlite SHARED sqlite-src/sqlite3.c)

# Экспорт заголовочных файлов для других проектов
target_include_directories(sqlite PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/sqlite-src)