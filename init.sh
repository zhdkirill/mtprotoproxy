#!/bin/bash
DOMAIN=mtproxy-tls.sharik.network
apt remove -y docker docker-engine docker.io containerd runc
apt update
apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update; apt install docker-ce docker-ce-cli containerd.io
certbot certonly --preferred-challenges http --must-staple --redirect --hsts --uir --staple-ocsp --rsa-key-size 4096 --domain $DOMAIN
croncmd="certbot renew"
cronjob="0 1 * * * $croncmd"
( crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" ) | crontab -
