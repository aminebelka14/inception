
FROM		debian:buster

#			Installing requiered packages
RUN			apt update -y && apt upgrade -y
RUN			apt install nginx -y
#			Generating and filling SSL/TSL certificate
RUN			mkdir -p /etc/nginx/ssl
RUN			apt install openssl -y
RUN			openssl req -newkey rsa:4096 -days 42 -nodes -x509 -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=ambelkac.42.fr/UID=ambelkac" -out /etc/ssl/certs/inception.crt -keyout /etc/ssl/private/inception.key
#			Directory for nginx conf files
RUN			mkdir -p /var/run/nginx
#			Sets websites rights correctly
RUN			chmod 755 /var/www/html
RUN			chown -R www-data:www-data /var/www/html

COPY		conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE		443

CMD			["nginx", "-g", "daemon off;"]