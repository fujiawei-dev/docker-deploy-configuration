# Portainer 通过 Web 管理 Docker

```shell
docker pull portainer/portainer-ce:latest
```

```shell
docker run -d -p 8000:8000 -p 9443:9443 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /mnt/ubuntu.old/root/dockerd/portainer:/data \
    portainer/portainer-ce:latest
```

```shell
docker run -d -p 8000:8000 -p 9443:9443 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /mnt/dockerd/portainer:/data \
    portainer/portainer-ce:latest
```

## 用户名密码

```shell
root
1234567890-=
```
