# Elastic 产品技术栈

```shell
git clone --depth=1 https://github.com/deviantony/docker-elk .
```

```shell
# 清理数据卷
docker-compose down --volumes
```

## Elasticsearch 全文搜索引擎

### 转移目录权限

> Error opening log file 'logs/gc.log': Permission denied

```shell
chown -R 1000:1000 /mnt/ssd/dockerd/elk
```

## Logstash 服务器端数据处理管道

## Kibana 数据可视化
