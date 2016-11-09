snakevil/php
===

基于 [snakevil/nginx][snakevil-nginx] 构建地 [nginx][]+[php-fpm][] 基础镜像。

[snakevil-nginx]: https://github.com/snakevil-docker/nginx
[nginx]: http://nginx.org
[php-fpm]: http://php.net/fpm

EXPOSE
---

* 80

    实现自 [snakevil/nginx](https://github.com/snakevil-docker/nginx#expose)。

VOLUME
---

* `/mnt/log`

    实现自 [snakevil/nginx](https://github.com/snakevil-docker/nginx#volume)。

    * `php-error.log`

        [php-fpm][] 错误日志。

    * `php-slow.log`

        [php-fpm][] 慢执行日志。

* `/mnt/_`

    实现自 [snakevil/base](https://github.com/snakevil-docker/base#volume)。
