#!/bin/bash
# удалить предыдущий контейнер
docker rm -f proxy

# Создаём и запускаем nginx контейнер
# 1. В фоновом режиме
# 2. Мапим порт к host машине
# 3. Устанавливаем имя контейнера
# 4. Устанавливаем хард лимит и лимит swap который может использовать контейнер
docker container run -d -p 80:80 --name proxy -m 5242880 --memory-swap 10485760 nginx