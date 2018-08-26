FROM kafebob/rpi-php-apache:5.6

COPY ./bootstrap /var/www/html/bootstrap
COPY ./index.php /var/www/html/index.php
COPY ./config_sample.php /var/www/html/config.php

COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf

RUN a2enmod headers

EXPOSE 80
