FROM registry.access.redhat.com/ubi8/php-74
USER root
RUN wget -qO- https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer;
USER 1001
