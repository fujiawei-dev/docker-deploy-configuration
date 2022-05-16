# Nginx 部署

> Docker 对于 localhost 不能轻易解决，而且每增加一个服务就多一个端口映射，不如原生方便。

不知道哪里配置有问题？反向代理慢到让我决定抛弃 Nginx，与直接请求相比，平均差了十几秒。

## 安装

```shell
apt install -y nginx-core
```

## 指定配置文件启动

```shell
nginx -c /root/projects/docker-conf/nginx/nginx.conf
```

## 停止

```shell
nginx -s stop
```

## 重启

```shell
nginx -s reload
```
