# SonarQube 代码质量和代码安全

```shell
sysctl -w vm.max_map_count=262144
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
docker-compose exec sonarqube bash
```

默认账户密码

```
admin
admin
```
