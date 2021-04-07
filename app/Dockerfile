FROM wordpress:fpm-alpine

# 日本語化するために WordPress 日本語版をインストールして展開
ENV WORDPRESS_TAR_FILE wordpress-5.7-ja.tar.gz
RUN rm -rf /usr/src/wordpress \
 && curl -O https://ja.wordpress.org/${WORDPRESS_TAR_FILE} \
 && tar -xzf ${WORDPRESS_TAR_FILE} -C /usr/src/ \
 && rm ${WORDPRESS_TAR_FILE} \
 && chown -R www-data:www-data /usr/src/wordpress

COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress
COPY php-uploads.ini /usr/local/etc/php/conf.d/uploads.ini

# ボリューム化
VOLUME /var/www/html
