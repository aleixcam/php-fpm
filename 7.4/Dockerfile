FROM php:7.4-fpm
WORKDIR /var/www/

RUN echo "alias la='ls -la'" >> ~/.bashrc

RUN apt update && apt upgrade -y && apt install -y \
	git \
	zip \
	unzip \
	&& apt-get autoremove -y

RUN curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer

RUN docker-php-ext-install pdo pdo_mysql

RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug

ENV PHP_XDEBUG_ENABLED=0

COPY ./entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
