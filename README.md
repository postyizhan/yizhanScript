# ⚠️ 这始终是方便我个人使用的sh，我只是一个小白，写的不好还请轻喷 ⚠️

## DeepinEssebtials
[点击查看脚本内容](/DeepinEssentials.sh)

### 它将会
- 卸载 深度帮助手册
- 卸载 深度欢迎
- 卸载 深度之家
- 卸载 sunpinyin输入法
- 卸载 系统自带小游戏（五子棋和连连看）
- 安装 星火应用商店
- 安装 vscode
- 安装 git
- 安装 linuxQQ

### wget并执行

`wget https://raw.kgithub.com/postyizhan/yizhanScript/main/DeepinEssentials.sh && sudo sh DeepinEssentials.sh`

## InstallDevilspie.sh
[点击查看脚本内容](/InstallDevilspie.sh)

### 它将会
- 安装和配置 devilspie

### wget并执行

`wget https://raw.kgithub.com/postyizhan/yizhanScript/main/InstallDevilspie.sh && sudo sh InstallDevilspie.sh`

## InstallFcitx5
[点击查看脚本内容](/InstallFcitx5.sh)

### 它将会
- 安装 本体以及拼音和表格输入法支持
- 安装 emoji表情支持
- 从俺仓库 [Releases](https://kgithub.com/postyizhan/yizhanScript/releases) 下载词库
- 从俺仓库 [Releases](https://kgithub.com/postyizhan/yizhanScript/releases) 下载皮肤
### 隐藏启动器中 fcitx5配置、键盘布局查看工具
`sudo sed -i '$a\NoDisplay=true' /usr/share/applications/fcitx5-configtool.desktop`

`sudo sed -i '$a\NoDisplay=true' /usr/share/applications/kbd-layout-viewer5.desktop`

### wget并执行

`wget https://raw.kgithub.com/postyizhan/yizhanScript/main/InstallFcitx5.sh && sudo sh `

## InstallFirefox
[点击查看脚本内容](/InstallFirefox.sh)

### 它将会
- 下载 [firefox](https://www.firefox.com.cn/)
- 依据 [在 Linux 中安装 Firefox](https://support.mozilla.org/zh-CN/kb/linux-firefox) 中的 从 `Mozilla 安装 Firefox` 进行安装
- 从俺的仓库获取 Desktop 文件
### wget并执行

`wget https://raw.kgithub.com/postyizhan/yizhanScript/main/InstallFirefox.sh && sudo sh InstallFirefox`

## InstallJava
[点击查看脚本内容](/InstallJava.sh.sh)

### 它将会
- 安装 [Oracle java17](https://www.oracle.com/cn/java/technologies/downloads/)
- 安装 openjdk8
- 安装 openjdk11
### wget并执行

`https://raw.kgithub.com/postyizhan/yizhanScript/main/InstallJava.sh && sudo sh InstallJava`

## InstallNodejs
[点击查看脚本内容](/InstallNodejs.sh)

### 它将会
- 安装和配置 nodejs 10.24.1
### wget并执行

`wget https://raw.kgithub.com/postyizhan/yizhanScript/main/InstallNodejs.sh && sudo sh InstallNodejs`
