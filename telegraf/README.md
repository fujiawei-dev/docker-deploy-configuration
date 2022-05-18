# Telegraf 收集指标写入 InfluxDB

> https://hub.docker.com/_/telegraf

## 简单示例

```shell
docker run --rm --name influxdb -p 8086:8086 influxdb
```

```shell
docker run --rm --net=container:influxdb telegraf
```

## 指定配置文件

```shell
# 导出默认配置文件
docker run --rm telegraf telegraf config > telegraf.conf
```

```shell
docker run -v $PWD/telegraf.conf:/etc/telegraf/telegraf.conf:ro telegraf
```

## 与输入插件配合

```shell
docker network create influxdb
```

```shell
docker run -d --name=influxdb --net=influxdb influxdb
```

```shell
docker run -d --name=telegraf \
      --net=influxdb \
      -v $PWD/telegraf.conf:/etc/telegraf/telegraf.conf:ro \
      telegraf
```

```shell
docker logs -f telegraf
```
