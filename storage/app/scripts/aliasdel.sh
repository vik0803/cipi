#!/usr/bin/env bash

while [ -n "$1" ] ; do
    case $1 in
    -d | --domain )
        shift
        DOMAIN=$1
        ;;
    * )
        echo "ERROR: Unknown option: $1"
        exit -1
        ;;
    esac
    shift
done


sudo unlink /etc/cron.d/certbot_renew_$DOMAIN.crontab


sudo unlink /etc/nginx/sites-enabled/$USER_NAME.conf
sudo unlink /etc/nginx/sites-available/$USER_NAME.conf
sudo systemctl restart nginx.servic


clear
echo "###CIPI###Ok"
