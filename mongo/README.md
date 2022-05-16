# MongoDB 数据库

### 命令行

```shell
# ubuntu
docker run --restart=always -d --name mongo -p 27017:27017 -v /mnt/ubuntu.old/root/dockerd/mongo:/data/db mongo

# openwrt v5 以上引入了新特性，不支持
docker run --restart=always -d --name mongo -p 27017:27017 -v /mnt/dockerd/mongo:/data/db mongo:4
```
