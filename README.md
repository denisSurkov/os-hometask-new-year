## Задача 1 
python3 logs_generator.py 

Сделал без logging, чтобы не заморачиваться с форматированием и доп переменными из контекста. 

## Задача 2
./bash_stats
Скрипт для удобного запуска всех скриптов сразу ``./stats.sh``

## Задача 3
logger-task.service

## Задача 4
```
cp ./logger-task.service /etc/systemd/system/;
cp ./logs_generator.py /usr/bin/;
systemctl enable logger-task
```

## Задача 5
Использовал хак с systemctl (с привилениями и смаунтил часть файловой системы)
```
docker build --rm --no-cache -t logger-task .
docker run --privileged --name logger-task -v /sys/fs/cgroup:/sys/fs/cgroup:ro  -d logger-task
```
