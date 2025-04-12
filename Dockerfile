
FROM php:8.1-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copiar todos los archivos del proyecto al directorio web de Apache
COPY . /var/www/html/

# Dar permisos adecuados al directorio
RUN chown -R www-data:www-data /var/www/html \&& chmod -R 755 /var/www/html
# Exponer el puerto 80
EXPOSE 80