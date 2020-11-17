FROM php:7.4-fpm
WORKDIR /var/www/

RUN apt update && apt upgrade -y && apt install -y \
	git \
	zip \
	unzip \
	&& apt-get autoremove -y

RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer

ENV PHP_XDEBUG_ENABLE=0

RUN echo "alias la='ls -la'" >> ~/.bashrc
