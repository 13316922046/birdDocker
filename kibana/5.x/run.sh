CURRENT_UID=`whoami`
docker run -itd -p 5601:5601 -v /Users/yunyu/workspace_git/birdDocker/kibana/5.x/config:/usr/share/kibana/config -v /Users/yunyu/workspace_git/birdDocker/kibana/5.x/logs:/usr/share/kibana/logs --link elasticsearch_5.x_${CURRENT_UID} --name kibana_5.x_${CURRENT_UID} birdben/kibana_5.x:v2
# --link : 设置启动Kibana客户机容器并链接至ES服务器容器，并且修改kibana.yml配置文件中连接ES的host主机名称