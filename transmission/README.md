# Transmission BitTorrent 客户端

> https://hub.docker.com/r/linuxserver/transmission

## 复制出原始配置

```shell
docker run -v $PWD/config:/mnt/config --rm lscr.io/linuxserver/transmission:latest /bin/bash -c "cp -rf /config/* /mnt/config"
```

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
docker-compose exec transmission bash
```
