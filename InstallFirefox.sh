#!/bin/bash

# 切换路径
sudo cd ~/Downloads

# 下载Firefox
sudo wget -O ~/Downloads/Firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64"

# 将下载文件的内容解压缩
sudo tar xjf Firefox.tar.bz2

# 将解压的 Firefox 目录移到 /opt:
sudo mv firefox /opt

# 创建一个指向 Firefox 可执行文件的 symlink:
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox

# 从俺的仓库下载一个 desktop 文件扔到桌面
sudo wget -P ~/Desktop/ https://github.com/postyizhan/yizhanScript/releases/download/Firefox/firefox.desktop

# 也放一份到开始菜单
sudo cp ~/Desktop/firefox.desktop ~/.local/share/applications/
