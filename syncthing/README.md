# Syncthing 同步备份数据

## 本地文件夹备份

策略是开两个 Docker 容器，相互同步。

```
docker compose -f docker-compose.yaml up -d
```

缺点是小文件多的话同步超级慢。

## 不同主机备份

```
docker pull syncthing/syncthing

docker run --network=host \
    -v /:/backup \
    -v /mnt/dockerd/syncthing:/var/syncthing \
    syncthing/syncthing:latest
```
