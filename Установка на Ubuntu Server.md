##### Установка Docker
Я не буду прописывать все варианты установки, на сайте https://docs.docker.com/engine/install/ubuntu/ описаны все варианты, все они рабочие.<br>
Установить Docker Engine можно разными способами в зависимости от ваших потребностей:<br>
- Docker Engine поставляется в комплекте с Docker Desktop для Linux . Это самый простой и быстрый способ начать работу.
- Настройте и установите Docker Engine из репозитория Dockerapt .
- Установите его вручную и управляйте обновлениями вручную.
- Используйте удобный скрипт. Рекомендуется только для сред тестирования и разработки.

> Например так

![image](https://github.com/user-attachments/assets/025d4868-c918-42f6-9ca9-65799746d1d9)

> Или с помощью скрипта ``sudo sh ./get-docker.sh --dry-run``

![image](https://github.com/user-attachments/assets/4429a604-b42e-4a73-90c9-b2db46f16633)

##### В этом варианте опишу, что делает каждая команда.

1. Сначала обновите существующий список пакетов:
```python
sudo apt update
```

2. Установите несколько обязательных пакетов, которые позволят apt использовать пакеты по HTTPS:
```python
sudo apt install apt-transport-https ca-certificates curl software-properties-common
```

3. Добавьте ключ GPG для официального репозитория Docker:
```python
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

4. Добавьте репозиторий Docker в источники APT:
```python
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
```

5. Обновите базу данных пакетов, добавив в нее пакеты Docker из недавно добавленного репозитория:
```python
sudo apt update
```

6. Убедитесь, что вы собираетесь выполнить установку из репозитория Docker, а не из репозитория Ubuntu по умолчанию:
```python
apt-cache policy docker-ce
```

7. Устанавливаем докер
```python
sudo apt-get install docker-ce
```

8. Проверьте, работает ли он
```python
sudo systemctl status docker
```

9. Необязательные шаги (разрешить запуск команд Docker без sudo):
> Добавьте свое имя пользователя в группу Docker
> 
```python
sol@ubuntu:~$sudo usermod -aG docker ${USER}
Проверяем, что docker теперь запускается без sudo
sol@ubuntu:~$sudo systemctl stop docker
sol@ubuntu:~$systemctl start docker
sol@ubuntu:~$systemctl status docker
```
![image](https://github.com/user-attachments/assets/330cd787-6f90-44c2-a6f1-d1f57b706f7f)

![image](https://github.com/user-attachments/assets/0f64cb89-f9ab-4b33-98b5-9d29dc469214)

Если при выполнения docker появилась такая ошибка

![image](https://github.com/user-attachments/assets/9f6dceab-7d6b-4b9c-b373-4be697b82c17)

Значит забыли выполнить следующую команду, чтобы активировать изменения в группах:
```python
newgrp docker
```
![image](https://github.com/user-attachments/assets/ac6f9de1-a5e2-40a1-a9c4-7b9ac1515206)

![image](https://github.com/user-attachments/assets/952b31f0-8efe-4ad5-8ec1-2b46de682450)

![image](https://github.com/user-attachments/assets/77727ffb-f4bf-4483-bba4-a877b8e5b319)

![image](https://github.com/user-attachments/assets/15e1f792-2350-491a-b2d6-44aff3627d28)

