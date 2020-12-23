cp /opt/conf/v2ray-mng_masteronly.conf /etc/nginx/sites-enabled/default
nohup java -jar -Xms40m -Xmx40m -XX:MaxDirectMemorySize=100M -XX:MaxMetaspaceSize=180m /opt/jar/admin.jar --spring.config.location=/opt/conf/admin.yaml >> /opt/admin.log &
nginx -g 'daemon off;'