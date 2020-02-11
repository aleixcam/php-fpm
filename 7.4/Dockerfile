FROM php:7.4-fpm
WORKDIR /var/www/

RUN echo "alias la='ls -la'" > ~/.bashrc

RUN apt update && apt upgrade -y && apt install -y \
	zip \
	unzip \
	git \
	curl

RUN pecl install xdebug \
	&& zend_extension="/usr/local/php/modules/xdebug.so" >> /usr/local/etc/php/php.ini-development

RUN curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer
