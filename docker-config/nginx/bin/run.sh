#!/bin/sh
sed -i s/@@FPM_BACKEND@@/${FPM_BACKEND}/ /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"