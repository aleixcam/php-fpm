FROM php:7.3-fpm
WORKDIR /var/www/

RUN apt-get update && apt-get install -y git zip unzip && apt-get autoremove -y \
	&& echo "alias la='ls -la'" > ~/.bashrc

RUN curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer

ENV PHP_XDEBUG_ENABLE=0
