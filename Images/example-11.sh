#!/bin/bash

# Удалить всё что не используется
docker system prune -a -f

# Скачиваем пользовательский образ на локальный компьютер
docker image pull fholzer/nginx-brotli

# Получаем подробную информацию про образ
docker image inspect fholzer/nginx-brotli
