export UBUNTU_HOST=192.168.0.18
export OPENWRT_HOST=192.168.0.10

echo '# nginx'
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:80
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $OPENWRT_HOST:82/gitea-rpi/
echo

echo '# code-server'
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:8443/login
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $OPENWRT_HOST:8443/login
echo

echo '# docker-registry'
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:5000
echo

echo '# gitea'
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $OPENWRT_HOST:13000
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $OPENWRT_HOST:18080
echo

echo '# teamcity'
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:18025/teamcity
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:18027
echo

echo '# youtrack'
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:18024/youtrack
echo

echo '# netdata'
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:19999
echo

echo '# portainer'
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:8000
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:9443
echo

echo '# syncthing'
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:8384
curl -s -o /dev/null -I -w "%{url_effective} [%{http_code}] %{time_total}s\n" $UBUNTU_HOST:8385
echo
