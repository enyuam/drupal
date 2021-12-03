FROM registry.access.redhat.com/ubi8/php-74
CMD echo 'DocumentRoot "/opt/app-root/src/web"' > /etc/httpd/conf.d/app.conf
CMD httpd -D FOREGROUND
USER root
RUN wget -qO- https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer;
USER 1001
