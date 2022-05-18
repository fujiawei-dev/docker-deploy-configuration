# InfluxDB 存储海量时间序列数据

```shell
docker network create influxdb
```

```shell
docker run -d --name=influxdb --net=influxdb influxdb
```

## 基础操作

```shell
# Start
docker-compose up -d

# Stop
docker-compose stop

# Update
docker-compose pull

# Logs
docker-compose logs --tail=25 -f

# Terminal
docker-compose exec influxdb bash
```
