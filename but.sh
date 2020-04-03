  #!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
#
# 		 __          __  __ 
#		/__)_   _/_ /  )(   
#	   /   (//)(/(/(__/__) 1.0 u-beta.
# PandaoOS Auto install Ubuntu shell (19.10)
#
# Copyright (C) 2020  PandaOS Tame https://github.com/pandaos
#
# About higker & dings <deen.job@qq.com>
# System Required:  Ubuntu19.10
#
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
#检测系统是否以root运行
[[ $EUID -ne 0 ]] && echo -e "[${red}Error${plain}] This script must be run as root!" && exit 1
check_sys(){ 
    local release=''
    local systemPackage=''
    if [[ -f /etc/redhat-release ]]; then
        release="centos"
        systemPackage="yum"
    elif grep -Eqi "debian|raspbian" /etc/issue; then
        release="debian"
        systemPackage="apt"
    elif grep -Eqi "ubuntu" /etc/issue; then
        release="ubuntu"
        systemPackage="apt"
    elif grep -Eqi "centos|red hat|redhat" /etc/issue; then
        release="centos"
        systemPackage="yum"
    elif grep -Eqi "debian|raspbian" /proc/version; then
        release="debian"
        systemPackage="apt"
    elif grep -Eqi "ubuntu" /proc/version; then
        release="ubuntu"
        systemPackage="apt"
    elif grep -Eqi "centos|red hat|redhat" /proc/version; then
        release="centos"
        systemPackage="yum"
    fi
    if [ $release != "ubuntu" ]; then
        echo -e "[${red}Error${plain}] This system not is ubuntu !" && exit 1
    fi
}
set_ppa{
    echo "deb http://ppa.launchpad.net/pandaos/desktop/ubuntu eoan main" >> /etc/apt/sources.list
    echo "deb-src http://ppa.launchpad.net/pandaos/desktop/ubuntu eoan main" >> /etc/apt/sources.list
    sudo add-apt-repository ppa:pandaos/desktop
    sudo apt-get update
    echo -e "[${green}Info${plain}] Successful install PandaOS-Ubuntu-ppa.Good louk ^_^"
}
check_network{
    #检测网络
    test_ip = 'ppa.launchpad.net'
    if  ping -c 1 $test_ip >/dev/null 2>&1 ; then
        echo -e "[${green}Info${plain}] Starting install PandaOS-Ubuntu-ppa..."
    else
        echo -e "[${red}Error${plain}] Network connection failed !" && exit 1
    fi
}
check_network
set_ppa

