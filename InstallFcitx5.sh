#!/bin/bash

# 切换路径
cd ~/Downloads

# 安装 Fcitx5 
# 安装和配置详见 https://www.bilibili.com/read/cv22635227

# 卸载旧版输入法
#sudo apt purge -y fcitx* ibus*

# 使用 apt 安装本体以及拼音和表格输入法支持
sudo apt -y install fcitx5 fcitx5-chinese-addons

# emoji表情支持
sudo apt -y install fonts-noto-color-emoji

# 从俺仓库下载词库 词库原地址：https://pinyin.sogou.com/dict/detail/index/11817
wget https://kgithub.com/postyizhan/yizhanScript/releases/download/Fcitx5/ciku.dict -P ~/.local/share/fcitx5/pinyin/dictionaries/

# 从俺仓库下载皮肤
wget https://kgithub.com/postyizhan/yizhanScript/releases/download/Fcitx5/fcitx5-simple-themes.zip

# 解压到目录
unzip fcitx5-simple-themes.zip -d ~/.local/share/fcitx5/themes

# #隐藏启动器中 fcitx5配置、键盘布局查看工具
# sudo sed -i '$a\NoDisplay=true' /usr/share/applications/fcitx5-configtool.desktop 
# sudo sed -i '$a\NoDisplay=true' /usr/share/applications/kbd-layout-viewer5.desktop
