FROM kafebob/rpi-php-apache

COPY ./.htaccess /var/www/html/.htaccess
COPY ./index.php /var/www/html/index.php
COPY ./config_sample.php /var/www/html/config.php

COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80
