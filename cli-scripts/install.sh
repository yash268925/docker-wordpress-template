#!/usr/bin/env bash

wp core install \
  --url="$WORDPRESS_SITE_URL" \
  --title="$WORDPRESS_SITE_TITLE" \
  --admin_user="$WORDPRESS_ADMIN_USER" \
  --admin_password="$WORDPRESS_ADMIN_PASSWORD" \
  --admin_email="$WORDPRESS_ADMIN_EMAIL" \
  $( [[ ! $WORDPRESS_ADMIN_EMAIL_SKIP ]] && echo '--skip-email' )
