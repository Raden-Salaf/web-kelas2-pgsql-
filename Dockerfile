FROM richarvey/nginx-php-fpm:3.1.6

# Copy semua kode project ke dalam container
COPY . .

# Environment variable wajib untuk image ini
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr

# Izinkan custom build script kita dijalankan
ENV SKIP_COMPOSER 1
ENV COMPOSER_PROCESS_TIMEOUT 600

CMD ["/start.sh"]
