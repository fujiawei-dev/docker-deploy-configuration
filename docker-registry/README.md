# Docker Hub 缓存镜像

```json
{
    "builder": {
        "gc": {
            "defaultKeepStorage": "100GB",
            "enabled": true
        }
    },
    "debug": true,
    "experimental": true,
    "features": {
        "buildkit": true
    },
    "log-level": "warn",
    "insecure-registries": [
        "127.0.0.1:5000"
    ],
    "registry-mirrors": [
        "http://127.0.0.1:5000"
    ]
}
```

## 启动

```shell
docker compose up -d
```

## 浏览日志

```shell
docker compose logs --tail 50
```
