# Очистка кеша openwrt.

Роутер работает долгое время без перезагрузки, для очистки кеша можно использовать команду:

	sync && echo 3 > /proc/sys/vm/drop_caches

1. Чтоты автоматизировать очистку можно так:

	cd /sbin && wget https://raw.githubusercontent.com/Spothz/clear_cache/refs/heads/main/clear_cache.sh

2. Выдать права:

	chmod +x /sbin/clear_cache.sh

3. Зайти в запланированные задачи и ввести:

	0 * * * * /sbin/clear_cache.sh

4. Перезагрузить cron:

  service cron restart

# Обновление правил маршрутизации ядра xray.

1. Автоматичее обновления правил geogeosite.dat и geoio.dat по пути /usr/share/xray/
из https://github.com/runetfreedom/russia-v2ray-rules-dat:

cd /sbin && wget https://raw.githubusercontent.com/Spothz/clear_cache_openwrt/refs/heads/main/rules_update.sh

2. Выдать права:

	chmod +x /sbin/rules_update.sh

3. Зайти в запланированные задачи и ввести:

	0 * * * * /sbin/rules_update.sh

4. Перезагрузить cron:

  service cron restart
