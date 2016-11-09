FROM registry.cn-hangzhou.aliyuncs.com/snakevil/nginx
MAINTAINER Snakevil Zen <zsnakevil@gmail.com>

RUN BUILD_DATE=20161109 \
 && apk add --no-cache php5-fpm php5-opcache
ADD share/docker/ /

RUN rm -r /etc/php5/fpm.d
