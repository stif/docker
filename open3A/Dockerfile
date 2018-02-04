FROM php:5-apache

RUN apt-get update && apt-get install -y unzip wget

RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
    && docker-php-ext-configure mysqli --with-mysqli=mysqlnd \
    && docker-php-ext-install -j$(nproc) mysqli pdo pdo_mysql

WORKDIR /var/www/html/

# use open source version
RUN wget https://www.open3a.de/multiCMSDownload.php?filedl=99 -O open3A_2.7.zip
# or use your personal copy named open3A_2.7.zip sitting in the same folder than this file
#COPY open3A_2.7.zip open3A_2.7.zip

RUN unzip open3A_2.7.zip

RUN chmod 666 system/DBData/Installation.pfdb.php
RUN mkdir system/session && chmod 755 system/session
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80