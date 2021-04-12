ARG UID=82
ARG GID=82
ARG UNAME=www-data

FROM yash268925/docker-neovim-user

RUN sudo apk add nodejs npm \
 && sudo npm add -g intelephense

WORKDIR /var/www/html
