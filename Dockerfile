FROM composer:latest

WORKDIR /app

COPY . /app/

RUN composer update && composer install 

RUN apk add npm 

RUN npm install && npm run build

RUN docker-php-ext-install mysqli pdo pdo_mysql

ENTRYPOINT [ "/app/script.sh" ]