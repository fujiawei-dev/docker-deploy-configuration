# Prefect 现代化的数据工作流程平台

## 导出配置文件

折腾半天，部署在其他机器上就是无法连接成功。最终发现官方生成的配置文件有问题，导致 `PREFECT_API_HEALTH_URL` 和 `PREFECT_API_URL` 的端口是错误的。

```shell
prefect server config --expose --use-volume --ui-port=10018 --postgres-port=10010 --volume-path="/mnt/ssd/dockerd/prefect/postgresql" --graphql-port=10012 --server-port=10024 > docker-compose.yml
```

```shell
graphql:10012
# 改为
graphql:4201
```

## GraphQL 配置

### 网页前端

Prefect Server GraphQL endpoint:
​
```shell
http://192.168.0.18:10024/graphql
```

### 命令行配置

https://github.com/PrefectHQ/prefect/issues/4049

```shell
/root/.prefect/config.toml
```

```ini
[server]
host = "http://127.0.0.1"
port = "10024"
endpoint = "${server.host}:${server.port}"
```

创建这个，不知道是什么，官方文档根本没提到：

```shell
prefect server create-tenant --name main --slug main
```

然后才能启动 agent：

```shell
prefect agent local start --show-flow-logs
```

无法放入后台执行，只能通过其他方法。

```shell
screen -S prefect
```

```shell
prefect agent local start --show-flow-logs
```

```shell
ctrl+a d
```

```shell
screen -ls
```

```shell
screen -r prefect
```

## 基础操作

```shell
# Start
docker-compose up
docker-compose up -d

# Stop
docker-compose stop

# Update
docker-compose pull

# Logs
docker-compose logs --tail=25 -f

# Terminal
docker-compose exec sonarqube bash
```
