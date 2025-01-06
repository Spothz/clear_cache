#!/bin/sh

# Временный каталог для загрузки файлов
TEMP_DIR="/tmp/xray-update"

# Целевой каталог для файлов
TARGET_DIR="/usr/share/xray"

# Ссылки на файлы
GEOIP_URL="https://raw.githubusercontent.com/runetfreedom/russia-v2ray-rules-dat/release/geoip.dat"
GEOSITE_URL="https://raw.githubusercontent.com/runetfreedom/russia-v2ray-rules-dat/release/geosite.dat"

# Создаем временный каталог
mkdir -p "$TEMP_DIR"

# Скачиваем файлы
wget -q -O "$TEMP_DIR/geoip.dat" "$GEOIP_URL"
wget -q -O "$TEMP_DIR/geosite.dat" "$GEOSITE_URL"

# Проверяем, успешно ли скачаны файлы
if [ -f "$TEMP_DIR/geoip.dat" ] && [ -f "$TEMP_DIR/geosite.dat" ]; then
    # Перемещаем файлы в целевой каталог
    mv "$TEMP_DIR/geoip.dat" "$TARGET_DIR/geoip.dat"
    mv "$TEMP_DIR/geosite.dat" "$TARGET_DIR/geosite.dat"
    
    echo "Файлы успешно обновлены."
else
    echo "Ошибка при загрузке файлов."
fi

# Удаляем временный каталог
rm -rf "$TEMP_DIR"
