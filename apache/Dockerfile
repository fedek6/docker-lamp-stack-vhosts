FROM php:8.0-apache

# PHP extensions
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Update
RUN apt-get update && apt-get upgrade -y

## Custom PHP config
COPY 100-custom.php.ini /usr/local/etc/php/conf.d/100-custom.php.ini

# Copy virtual host configs
COPY example.com.conf /etc/apache2/sites-available/example.com.conf
RUN a2ensite example.com.conf

# Additional Apache config
RUN a2enmod rewrite
