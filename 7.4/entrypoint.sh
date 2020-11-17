#!/bin/bash

if [ ${PHP_XDEBUG_ENABLED} -ne 1 ]; then
	cd /usr/local/etc/php/ && mkdir -p disabled/ && mv conf.d/docker-php-ext-xdebug.ini disabled/
fi
