#!/bin/bash
echo "0 0 * * * /opt/letsencrypt/certbot-auto --nginx renew >> /var/log/certbot.log" >> /home/root/wazuh/cron/nginx/root
cd /home/root/wazuh
docker-compose exec --user=root nginx /opt/letsencrypt/letsencrypt-auto --nginx --email  info@try.direct -d demo.local  --non-interactive --agree-tos