FROM registry.cn-hangzhou.aliyuncs.com/snakevil/base
MAINTAINER Snakevil Zen <zsnakevil@gmail.com>

EXPOSE 80 443
VOLUME /mnt/log

RUN apk add --no-cache php5-fpm php5-opcache
ADD src/ /

RUN rm -r /etc/php5/fpm.d
