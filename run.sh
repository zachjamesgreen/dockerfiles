#!/bin/bash
cd /var/www/html/yoga;
pwd
echo "running stuff";
composer install --no-dev -n --prefer-source;
composer dumpautoload -o;
chown -R www-data:www-data /var/www/html/yoga;
