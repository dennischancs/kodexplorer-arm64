#!/bin/sh
# -n 不覆盖已有配置
cp -rn /var/www/html/data/* /koddata
rm -rf /var/www/html/data
exec darkhttpd /var/www/html/static/ariang/ --port 5218 &
exec php -S "0.0.0.0:5210" -t /var/www/html