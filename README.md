# Конвейер для сборки SQLite

## Описание

Конвейер позволяет собирать исходники при помощи следующих средств:

* Локально
* В контейнере Docker (требует Docker)
* В виртуальной машине Vagrant ( требует Vagrant)

Каждый из этих трёх способов добавляет в директорию запуска файлы libsqlite.so и build.log. Скрипты полностью автоматизируют процесс

## Инструкция

### Локально

1. Распакуйте содержимое архива tz-devops-spb.zip в директорию сборки.
2. Перейдите в директорию task1-5.
3. Запустите команду:

```bash
   chmod u+x ./build.sh && ./build.sh
```

Скрипт подготовит окружение для сборки и в директории запуска скрипта появятся файлы libsqlite.so и build.log.

### В контейнере Docker

1. Распакуйте содержимое архива tz-devops-spb.zip в директорию сборки.
2. Перейдите в директорию task1-5.
3. Запустите команду:

```bash
   chmod u+x ./build_docker.sh && ./build_docker.sh
```

Скрипт подготовит контейнер для сборки и в директории запуска скрипта появятся файлы libsqlite.so и build.log. Контейнер и образ будут удалены.

### В виртуальной машине Vagrant

1. Распакуйте содержимое архива tz-devops-spb.zip в директорию сборки.
2. Перейдите в директорию task1-5.
3. Запустите команду:

```bash
   chmod u+x ./build_vagrant.sh && ./build_vagrant.sh
```

Скрипт подготовит виртуальную машину для сборки и в директории запуска скрипта появятся файлы libsqlite.so и build.log. В скрипт добавлена команда для остановки виртуальной машины в случае если это не произойдёт автоматически.

## Автор

Александр Роджерс, a.rodzhers51@mail.ru
