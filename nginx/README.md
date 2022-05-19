# Nginx 部署

> Docker 对于 localhost 不能轻易解决，而且每增加一个服务就多一个端口映射，不如原生方便。

## 安装

```shell
apt install -y nginx-core
```

## 指定配置文件启动

```shell
nginx -c /root/projects/docker-deploy-configuration/nginx/nginx.conf
```

## 停止

```shell
nginx -s stop
```

## 重启

```shell
nginx -s reload
```
