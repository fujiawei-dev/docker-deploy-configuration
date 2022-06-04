# TeamCity 部署

在找不到正确方法之前，部署真的让人奔溃。

## TeamCity Docker 方式

> https://hub.docker.com/r/jetbrains/teamcity-server

Docker 更新比较方便。

```shell
docker pull jetbrains/teamcity-server
```

### 权限问题

```shell
chown -R 1000:1000 /mnt/ssd/dockerd/jetbrains/teamcity_server
```

可能还是 Docker 比较方便。

## TeamCity 原生方式

### 下载软件

```shell
wget https://download.jetbrains.com/teamcity/TeamCity-2022.04.tar.gz
```

### 解压安装

```shell
mkdir /usr/local/bin/bin

tar -zxvf TeamCity-2022.04.tar.gz -C /usr/local/bin
```

### 反向代理设置

> https://www.jetbrains.com/help/teamcity/configuring-proxy-server.html

```
TEAM_CITY_PATH=/usr/local/bin/TeamCity
mv $TEAM_CITY_PATH/webapps/ROOT $TEAM_CITY_PATH/webapps/teamcity
```

### 启动

```shell
apt install -y openjdk-11-jre-headless
```

```shell
java -version
```

> 貌似不能运行在 ARM 上。

```shell
/usr/local/bin/TeamCity/bin/teamcity-server.sh start
```

```shell
curl http://127.0.0.1:8111/teamcity/
```

## TeamCity Agent

### 原生安装

```shell
wget http://ubuntu-amd64/teamcity/update/buildAgentFull.zip
```

```shell
apt install p7zip-full -y
```

```shell
rm -rf /usr/local/bin/TeamCityAgent
```

```shell
mkdir /usr/local/bin/TeamCityAgent
```

```shell
7z x buildAgentFull.zip -o/usr/local/bin/TeamCityAgent -aou
```

```shell
cd /usr/local/bin/TeamCityAgent
```

```shell
# 修改服务主机的地址
cp conf/buildAgent.dist.properties conf/buildAgent.properties 

vim conf/buildAgent.properties

serverUrl=http://127.0.0.1:18025/teamcity
name=ubuntu-amd64
```

```shell
/usr/local/bin/TeamCityAgent/bin/agent.sh start
/usr/local/bin/TeamCityAgent/bin/agent.sh stop
```

### Docker 容器

```shell
docker pull jetbrains/teamcity-agent:latest
```

```shell
docker run -d -e SERVER_URL="http://172.17.0.1/teamcity/" -e AGENT_NAME="linux-docker-agent" jetbrains/teamcity-agent
```

## 初始化设置

数据目录

```
mkdir -p /mnt/ssd/data/jetbrains/teamcity

/mnt/ssd/data/jetbrains/teamcity
```

## 设置开机自启

```shell
/usr/local/bin/TeamCity/bin/teamcity-server.sh start
/usr/local/bin/TeamCityAgent/bin/agent.sh start

/usr/local/bin/TeamCity/bin/teamcity-server.sh stop
/usr/local/bin/TeamCityAgent/bin/agent.sh stop
```

## 手动升级

由于设置代理，修改了文件名，只能手动下载升级，确实麻烦啊。

更麻烦的居然是不能用原来的数据库。。。每次只能全新安装，这怎么搞？！

1. 备份数据

```shell
/mnt/ubuntu.old/root/dockerd/teamcity/backup
```

2. 删除原安装目录文件

```shell
rm -rf /usr/local/bin/TeamCity
```
