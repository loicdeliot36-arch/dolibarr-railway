FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY www/ /var/www/html/

RUN mkdir -p /var/www/documents \
    && chown -R www-data:www-data /var/www/html \
    && chown -R www-data:www-data /var/www/documents \
    && a2enmod rewrite

EXPOSE 80
