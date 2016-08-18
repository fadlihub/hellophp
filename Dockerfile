# new dockerfile
# tambah 2nd line
#FROM php:7.0-apache
FROM php:5.6-apache
COPY ./index.php /var/www/html/index.php
