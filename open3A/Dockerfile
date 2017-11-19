FROM php:5-apache

#COPY php.ini /usr/local/etc/php/
#COPY php.ini /etc/php5/apache2/conf.d/php.ini

RUN apt-get update && apt-get install -y unzip wget
#RUN apt-get install -y libapache2-mod-php5 php5-mysql
#RUN docker-php-ext-install -j$(nproc) mysqli pdo pdo_mysql
RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
    && docker-php-ext-configure mysqli --with-mysqli=mysqlnd \
    && docker-php-ext-install -j$(nproc) mysqli pdo pdo_mysql

WORKDIR /var/www/html/

RUN wget https://www.open3a.de/multiCMSDownload.php?filedl=98 -O open3A_2.6.zip
RUN unzip open3A_2.6.zip
RUN chmod 666 system/DBData/Installation.pfdb.php
#RUN mkdir system/session && chmod 755 system/session && chown www-data:www-data system/session
RUN mkdir system/session && chmod 755 system/session
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

