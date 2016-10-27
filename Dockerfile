FROM registry.cn-hangzhou.aliyuncs.com/snakevil/base
MAINTAINER Snakevil Zen <zsnakevil@gmail.com>

EXPOSE 80
VOLUME /mnt/log

RUN BUILD_DATE=20161027 \
 && apk add --no-cache php5-fpm php5-opcache nginx
ADD share/docker/ /

RUN rm -r /etc/php5/fpm.d /etc/nginx/default.d /etc/nginx/fastcgi.conf /var/www/localhost
