FROM php:7.3-fpm
WORKDIR /var/www/

RUN echo "alias la='ls -la'" >> ~/.bashrc

RUN apt-get update && apt-get install -y \
	git \
	zip \
	unzip

RUN curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer

RUN apt-get autoremove -y
