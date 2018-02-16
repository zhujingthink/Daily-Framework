#!/bin/bash
echo "开始下载 electron-ssr安装包....................."
wget https://github.com/erguotou520/electron-ssr/releases/download/v0.2.0/electron-ssr_0.2.0_amd64.deb
echo "开始安装......................................"
sudo dpkg  -i electron-ssr_0.2.0_amd64.deb
echo "删除安装包....................................."
rm electron-ssr_0.2.0_amd64.deb
echo -e "安装完毕  \t\033[32;40;1m【√】\033[0m"
