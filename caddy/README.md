# Caddy 反向代理服务器

## 安装

### Ubuntu

```shell
sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo tee /etc/apt/trusted.gpg.d/caddy-stable.asc
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy
```

### Docker

```shell
docker pull caddy
```

## 启动

### 前台运行

```
caddy run --config Caddyfile
```

### 后台运行

```
caddy start --config Caddyfile
caddy reload --config Caddyfile
caddy stop
```

