FROM php:7.3-fpm-stretch

COPY --from=composer:1.8 /usr/bin/composer /usr/bin/composer

RUN apt update && apt install -y \
    libmcrypt-dev \
    libzip-dev \
    zip \
    git \
    && docker-php-ext-install -j$(nproc) \
    iconv \
    && pecl install \
    zip \
    mcrypt-1.0.2 \
    xdebug \
    && docker-php-ext-enable \
    zip \
    opcache \
    mcrypt

RUN     apt-get install -y zlib1g-dev libicu-dev g++ libzip-dev && \
        docker-php-ext-configure intl && \
        docker-php-ext-install intl

RUN apt install -y libxml2-dev && docker-php-ext-install -j$(nproc) soap && docker-php-ext-enable soap

RUN rm -r /var/lib/apt/lists/*