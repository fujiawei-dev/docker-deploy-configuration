# Youtrack 部署

> https://hub.docker.com/r/jetbrains/youtrack

## 文件权限

```shell
chown -R 13001:13001 ./conf /mnt/ssd/dockerd/jetbrains/youtrack
```

## Nginx 代理

https://www.jetbrains.com/help/youtrack/standalone/Reverse-Proxy-Configuration.html#Nginx_Config

官方文档给的示例配置用于 HTTP 可能是有问题的。

## 基础操作

```shell
# Start
docker-compose up -d

# Stop
docker-compose stop

# Update
docker-compose pull

# Logs
docker-compose logs --tail=25 -f

# Terminal
docker-compose exec youtrack bash
```
