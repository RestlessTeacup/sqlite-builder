Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  
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
    cmake . && make
  SHELL
end