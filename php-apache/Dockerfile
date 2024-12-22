# 8.2 Apache image as the base
FROM php:8.3-apache

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
        # packages for MySQL database
        && docker-php-ext-install mysqli pdo_mysql
  
# Set document root
ENV APACHE_DOCUMENT_ROOT /var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Enable Apache modules
RUN a2enmod rewrite

# Copy the Apache virtual host file
COPY apache.conf /etc/apache2/sites-available/000-default.conf

# Enable Apache virtual host
RUN a2ensite 000-default.conf