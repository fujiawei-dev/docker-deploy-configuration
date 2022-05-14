set -x

INSTALL_PATH=/usr/local/bin/code-server

cd $INSTALL_PATH

CODE_RELEASE=$(curl -sX GET https://api.github.com/repos/coder/code-server/releases/latest | awk '/tag_name/{print $4;exit}' FS='[""]' | sed 's|^v||')

curl -o  /tmp/code-server.tar.gz -L "https://github.com/coder/code-server/releases/download/v${CODE_RELEASE}/code-server-${CODE_RELEASE}-linux-amd64.tar.gz"

tar xf /tmp/code-server.tar.gz -C $INSTALL_PATH --strip-components=1 

setsid $INSTALL_PATH/bin/code-server \
    --bind-addr 0.0.0.0:8443 \
    --config $PWD/config.yaml \
    --user-data-dir /mnt/ubuntu.old/root/dockerd/code-server/config/data \
    --extensions-dir /mnt/ubuntu.old/root/dockerd/code-server/config/extensions \
    --disable-telemetry \
    --auth password \
    --proxy-domain=localhost/vscode/ \
    /root > /dev/null 2>&1 &
