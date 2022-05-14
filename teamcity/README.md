# TeamCity 部署

## TeamCity 原生方式

### 下载软件

```shell
wget https://download.jetbrains.com/teamcity/TeamCity-2022.04.tar.gz
```

### 解压安装

```shell
mkdir /usr/local/bin/bin

tar -zxvf TeamCity-2022.04.tar.gz -C /usr/local/bin/bin
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
wget http://ubuntu-amd64:8111/update/buildAgentFull.zip
```

```shell
apt install p7zip-full -y

mkdir /usr/local/bin/TeamCityAgent

7z x buildAgentFull.zip -o/usr/local/bin/TeamCityAgent -aou

cd /usr/local/bin/TeamCityAgent

# 修改服务主机的地址

/usr/local/bin/TeamCityAgent/bin/agent.sh start
```

### Docker 容器

```shell
docker pull jetbrains/teamcity-agent:latest
```

```shell
docker run -d -e SERVER_URL="http://172.17.0.1/teamcity/" -e AGENT_NAME="linux-docker-agent" jetbrains/teamcity-agent
```


## 设置开机自启

```
/usr/local/bin/TeamCity/bin/teamcity-server.sh start
/usr/local/bin/TeamCityAgent/bin/agent.sh start

/usr/local/bin/TeamCity/bin/teamcity-server.sh stop
/usr/local/bin/TeamCityAgent/bin/agent.sh stop
```
