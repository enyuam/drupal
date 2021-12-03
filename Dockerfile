FROM registry.access.redhat.com/ubi8/php-74
RUN wget -qO- https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer;
