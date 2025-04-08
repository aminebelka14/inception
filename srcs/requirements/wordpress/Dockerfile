
FROM		debian:buster

#			Installing required packages
RUN			apt-get update -y && apt-get upgrade -y
RUN			apt-get install wget -y
#			Install PHP
RUN			apt-get install php7.3 -y
RUN			apt-get install php-fpm -y
RUN			apt-get install php-mysql -y
RUN			apt-get install mariadb-client -y
#			Install Wordpress and sets its rights
RUN			wget https://wordpress.org/wordpress-6.0.tar.gz -P /var/www
RUN			cd /var/www && tar -xzf wordpress-6.0.tar.gz
#RUN			rm wordpress-6.0.tar.gz
RUN			chown -R root:root /var/www/wordpress
#			Install CLI for WP
RUN			wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN			chmod +x wp-cli.phar
RUN			mv wp-cli.phar /usr/local/bin/wp

COPY		./conf/php.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY		conf/conf.sh conf.sh

ENTRYPOINT	["bash", "conf.sh"]