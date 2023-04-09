#!/bin/bash

#进到用户下载目录
cd ~/Downloads

# 安装 毛玻璃效果 详见：https://www.bilibili.com/read/cv22627766
## apt安装 devilspie
sudo apt install devilspie
## 创建目录
sudo mkdir ~/.devilspie
## 配置权限
sudo chmod 777 ~/.devilspie/
## 毛玻璃影响范围
sudo cat > ~/.devilspie/transparent.ds <<EOF
(
    if (contains (window_class) "Code")
        (begin
            (spawn_async (str "xprop -id " (window_xid) " -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 "))
            (spawn_async (str "xprop -id " (window_xid) " -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xdfffffff"))
        )
    if (contains (window_class) "deepin-terminal")
        (begin

            (spawn_async (str "xprop -id " (window_xid) " -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 "))
            (spawn_async (str "xprop -id " (window_xid) " -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xdfffffff"))
        )
)
EOF

## 将毛玻璃设为开机自启动
### 创建一个sh脚本
touch devilspie.sh
### 配置权限
sudo chmod +777 devilspie.sh
### 写入内容
sudo echo "devilspie &" > devilspie.sh
### 移入 /etc/profile.d/
sudo mv devilspie.sh /etc/profile.d/
