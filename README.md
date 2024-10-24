Бывает роутер работает долгое время без перезагрузки, для очистки кеша можно использовать команду:

sync && echo 3 > /proc/sys/vm/drop_caches

1. Чтоты автоматизировать очистку можно так:

cd /sbin && wget https://raw.githubusercontent.com/Spothz/clear_cache/refs/heads/main/clear_cache.sh

2. Выдать права:

chmod +x /sbin/clear_cache.sh

3. Зайти в запланированные задачи и ввести:

0 * * * * /sbin/free.sh

4. Перезагрузить cron:

service cron restart
