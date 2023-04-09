#!/bin/bash

# 切换路径
cd ~/Downloads/

## nodejs 10.24.1

# 下载
wget https://nodejs.org/dist/v10.24.1/node-v10.24.1-linux-x64.tar.gz

# 解压
tar xf node-v10.24.1-linux-x64.tar.gz

# 创建目录
sudo mkdir /usr/local/lib/node

# 将文件移动到node文件夹，然后将文件重命名为nodejs10.24.1
sudo mv node-v10.24.1-linux-x64 /usr/local/lib/node/nodejs10.24.1

# 配置权限
sudo chmod 777 /etc/profile

# 设置环境变量
sudo cat >> /etc/profile <<EOF
# nodejs 10.24.1

export NODEJS_HOME=/usr/local/lib/node/nodejs
export PATH=$NODEJS_HOME/bin:$PATH
EOF

#刷新修改
source /etc/profile

# 查看版本号
## node版本号
node -v
## npm版本号
npm -v