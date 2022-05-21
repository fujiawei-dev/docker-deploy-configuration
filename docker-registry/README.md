# Docker Hub 缓存镜像

## 启动

```shell
docker compose up -d
```

## 浏览日志

```shell
docker compose logs --tail 50 -f
```

## 问题

### 不同架构问题

架构不同的请求仍返回宿主机相同架构的镜像，除非指定了哈希值。

TODO，估计必须看源码了，
