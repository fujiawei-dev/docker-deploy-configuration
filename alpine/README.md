# Alpine Linux

> https://hub.docker.com/_/alpine

启动命令行：

```
docker run -it --rm alpine sh
```

## 示例

```Dockerfile
FROM alpine:3.14
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]
```
