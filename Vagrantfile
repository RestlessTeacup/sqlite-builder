Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  
  # Настройка синхронизированной папки
  config.vm.synced_folder ".", "/vagrant", type: "rsync"

  # Провижининг через inline-скрипт
  config.vm.provision "shell", inline: <<-SHELL
    # Обновление пакетов (с подавлением вопросов)
    sudo DEBIAN_FRONTEND=noninteractive apt update
    
    # Установка зависимостей
    sudo apt install -y \
        gcc \
        cmake \
        wget \
        unzip
    
    # Загрузка SQLite
    wget -q https://www.sqlite.org/2018/sqlite-amalgamation-3260000.zip
    
    # Распаковка в папку sqlite-src без вложенных директорий
    unzip -j -o sqlite-amalgamation-3260000.zip -d sqlite-src
    
    # Запуск сборки
    cmake . && make > build.log 2>&1

    # Копирование файлов сборки в синхронизированную папку
    cp libsqlite.so /vagrant/
    cp build.log /vagrant/
  SHELL
end