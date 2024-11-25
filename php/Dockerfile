FROM php:8.2-fpm

# Instalar las extensiones mysqli y pdo_mysql
RUN docker-php-ext-install mysqli pdo_mysql

# Instalar las dependencias necesarias para las extensiones de PHP
RUN apt-get update && apt-get install libpq-dev libzip-dev unzip libmysqlclient-dev -y

# Configurar el directorio de trabajo
WORKDIR /var/www/html

# Copiar los archivos de la aplicación al contenedor
# COPY . .

# Exponer el puerto para PHP-FPM
EXPOSE 9000