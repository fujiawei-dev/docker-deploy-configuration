# 常用 Docker 容器配置与部署

## 跨平台运行容器

### 列出支持的系统架构

```shell
docker buildx ls
```

### 安装支持不同系统架构

```shell
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
```

## Docker 拉取代理设置

```shell
mkdir -p /etc/systemd/system/docker.service.d
```

```shell
vim /etc/systemd/system/docker.service.d/http-proxy.conf
```

```ini
[Service]
Environment="HTTP_PROXY=http://127.0.0.1:8118"
Environment="HTTPS_PROXY=http://127.0.0.1:8118"
Environment="NO_PROXY=localhost,127.0.0.1"
```

```shell
systemctl daemon-reload && systemctl restart docker
```

```shell
systemctl show --property=Environment docker
```
