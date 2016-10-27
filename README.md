snakevil/php
===

基于 [snakevil/base][base] 构建地 [nginx][]+[php-fpm][] 基础镜像。

[base]: https://github.com/snakevil-docker/base
[nginx]: http://nginx.org
[php-fpm]: http://php.net/fpm

EXPOSE
---

* 80

VOLUME
---

* `/mnt/log`

    日志目录的外挂卷。

    * `nginx-access.log`

        [nginx][] 访问日志。

    * `nginx-error.log`

        [nginx][] 错误日志。

    * `php-error.log`

        [php-fpm][] 错误日志。

    * `php-slow.log`

        [php-fpm][] 慢执行日志。

* `/mnt/_`

    实现自 [snakevil/base](https://github.com/snakevil-docker/base#volume)。
