FROM php:7.4-fpm
WORKDIR /var/www/

RUN echo "alias la='ls -la'" >> ~/.bashrc

RUN apt update && apt upgrade -y && apt install -y \
	git \
	zip \
	unzip

RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer

RUN apt-get autoremove -y
