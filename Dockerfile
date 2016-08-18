# new dockerfile
# tambah 2nd line
#FROM php:7.0-apache
#FROM php:5.6-apache
FROM php:5.6.24-alpine
COPY ./index.php /var/www/html/index.php
COPY ./inpoh.php /var/www/html/inpoh.php
