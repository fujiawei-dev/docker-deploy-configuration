# Syncthing 同步备份数据

## 本地文件夹备份

```
docker compose -f docker-compose.yaml up -d
```

## 不同主机备份

```
docker pull syncthing/syncthing

docker run --network=host \
    -v /:/backup \
    -v /mnt/dockerd/syncthing:/var/syncthing \
    syncthing/syncthing:latest
```
