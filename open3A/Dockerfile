FROM php:5-apache

#COPY php.ini /usr/local/etc/php/
#COPY php.ini /etc/php5/apache2/conf.d/php.ini
COPY open3A_2.6/ /var/www/html/
# change system/DBData/Installation.pfdb.php to 666
# create system/session folder
# chmod to 755
# chown to www-data

# Setup volume
#VOLUME /var/www/html/
WORKDIR /var/www/html/

# Add init-and-run script
#ADD init-and-run-wiki.sh /usr/local/bin/init-and-run-wiki.sh

#ENV TERM xterm
#STOPSIGNAL SIGTERM
# Meta
# CMD ["/usr/local/bin/init-and-run-wiki.sh"]
EXPOSE 80

