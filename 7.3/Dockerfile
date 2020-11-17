FROM php:7.3-fpm
WORKDIR /var/www/

RUN apt update && apt upgrade -y && apt install -y \
	git \
	zip \
	unzip \
	&& apt-get autoremove -y

RUN curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/local/bin/composer

RUN echo "alias la='ls -la'" >> ~/.bashrc
