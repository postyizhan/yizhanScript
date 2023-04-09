#!/bin/bash

# 切换路径
cd ~/Downloads


# 修正错误
sudo apt --fix-broken install

### Oracle java17

### 下载并改名 java17
wget -O java17.deb https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb
### 安装17
sudo dpkg -i java17.deb


## 安装 openjdk8
sudo apt install -y openjdk-8-jdk
## 安装 openjdk11
sudo apt install -y openjdk-11-jdk

# 切换java版本
#sudo update-alternatives --config java
