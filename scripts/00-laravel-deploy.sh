#!/usr/bin/env bash

echo "Running composer install..."
composer install --no-dev --working-dir=/var/www/html --optimize-autoloader

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache

echo "Caching views..."
php artisan view:cache

echo "Linking storage..."
php artisan storage:link

echo "Running migrations..."
php artisan migrate --force
