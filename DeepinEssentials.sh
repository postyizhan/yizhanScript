#!/bin/bash

#进到用户下载目录
cd ~/Downloads

# 卸载深度帮助手册和深度欢迎两个没用还占地方的东西（会同时卸载dde，貌似没啥问题）
sudo apt purge -y deepin-manual
sudo apt purge -y dde-manual-content
# 卸载深度欢迎
sudo apt purge -y dde-introduction

# 卸载深度之家
sudo apt purge -y deepin-home

# 卸载sunpinyin输入法
sudo apt purge -y fcitx-sunpinyin

#这几个是系统自带小游戏（五子棋和连连看）
sudo apt purge -y com.deepin*

#清理一下
sudo apt autoremove -y --purge


#安装软件

# 安装星火应用商店
sudo apt install -y spark-store

# 添加VSCode源到source.list.d
wget -q -O - https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# 更新软件包信息
sudo apt update

# 安装vscode
sudo apt install -y code

# 安装 git
sudo apt install -y git


# 安装 linuxQQ 地址：https://im.qq.com/linuxqq/index.shtml
## 下载deb包并更名为linuxqq.deb
wget -O linuxqq.deb https://dldir1.qq.com/qqfile/qq/QQNT/2355235c/linuxqq_3.1.1-11223_amd64.deb
## 安装
sudo dpkg -i linuxqq.deb


# 安装nvidia闭源驱动
#sudo apt install -y nvidia-detect
#nvidia-detect | awk 'match($0, /nvidia-.*/, a) {print a[0]}' | xargs sudo apt -y install


#清理一下
sudo apt autoremove -y --purge

# 删除下载文件夹内的内容
# rm -rf ~/Downloads/
