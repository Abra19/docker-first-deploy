FROM caddy

# Конфигурационный файл Caddy
# Читается из /etc/caddy/Caddyfile
COPY services/caddy/Caddyfile /etc/caddy/

# Копируем приложение для доступа к статическим файлам хранящимся в репозитории
# Обычно это элементы интерфейса
COPY . /app