# Redis 缓存数据库

## 启动

```shell
docker compose up -d
```

### 命令行


```shell
# openwrt
docker run -d --restart=always -v /mnt/dockerd/redis/data:/data --name redis -p 6379:6379 redis --appendonly yes --ignore-warnings ARM64-COW-BUG
```

## 客户端

```shell
apt install -y redis-tools
```

```
redis-cli

127.0.0.1:6379> ping
PONG
```

