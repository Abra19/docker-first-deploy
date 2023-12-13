FROM node:20-slim

ENV PATH="$PATH:node_modules/.bin"

RUN apt-get update && apt-get install -y make

# Куда складываем файлы проекта
WORKDIR /app

# Копирует package.json и package-lock.json
COPY package*.json ./

# Установка зависимостей происходит до копирования файлов проекта
# Так как это позволяет реже сбрасывать этот слой (только при изменении файлов package*)
RUN npm ci

COPY . .

# Старт сервера описывается в scripts внутри package.json
CMD ["bin/start.sh"]