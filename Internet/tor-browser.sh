#!/bin/bash
echo "开始下载....................."
wget https://github.com/TheTorProject/gettorbrowser/releases/download/v7.5/tor-browser-linux64-7.5_en-US.tar.xz
echo "正在解压....................."
tar xvf tor-browser-linux64-7.5_en-US.tar.xz

sudo mv tor-browser_en-US /opt/
echo "正在创建桌面文件/usr/share/applications/tor-browser.desktop"
sudo cp -r ./x/tor-browser.desktop /usr/share/applications/
echo " "
echo -e "安装成功  \t\033[32;40;1m【√】\033[0m"