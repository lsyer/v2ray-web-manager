cp /opt/conf/v2ray-mng_proxyonly.conf /etc/nginx/sites-enabled/default
nohup java -jar -Xms40m -Xmx40m -XX:MaxDirectMemorySize=100M -XX:MaxMetaspaceSize=180m /opt/jar/v2ray-proxy.jar --spring.config.location=/opt/conf/proxy.yaml >> /opt/proxy.log &
mv /etc/v2ray/config.json /etc/v2ray/config.json.bak
cp /opt/conf/config.json /etc/v2ray/config.json
nohup /usr/bin/v2ray -config=/etc/v2ray/config.json &
nginx -g 'daemon off;'