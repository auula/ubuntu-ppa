```bash
 #你也可以脚本安装...
 Ubuntu@: ./but.sh
	          __          __  __
		 /__)_   _/_ /  )(
		/   (//)(/(/(__/__) 1.0 u-beta.
		Website:https://pandaos.github.io
	     PandaOS for Ubuntu19.10 install tools.
```

<p align="center"><code>PandaOS</code> 桌面 <code>Ubuntu19.10</code>版本 <code>PPA</code> 使用文档📚</p>

<p align="center">
    <a href="https://github.com/pandaos/ubuntu-ppa" target="_blank">English</a> | 
    <a href="https://github.com/higker/JTesseract" target="_blank">中 文 </a> |
    <a href="https://github.com/pandaos/panda-ubuntu-tools" target="_blank">but.sh</a> 
</p>

### 🔝置顶通知👨‍💻‍
<p align="center">
请确保你的系统是<code>Ubuntu 19.10</code>
版本!没有的话可以去下面链接下载安装~</p>
</br>

#### 相关链接
- [Ubuntu 19.10 Download](https://ubuntu.com/download/desktop/thank-you?version=19.10&architecture=amd64)

#### 开始安装
- 1.将```PandaOS PPA```添加到您的Ubuntu系统中,在```terminal```中运行命令.
```bash
sudo add-apt-repository ppa:pandaos/desktop
``` 
```bash
sudo apt-get update
``` 
**您可以通过将ppa:pandaos/desktop添加到系统的软件源中使用不受信任的PPA中不受支持的软件包来更新系统。**
- 2.```PPA```手动添加到您的系统,同样在终端里输入
```bash
echo "deb http://ppa.launchpad.net/pandaos/desktop/ubuntu eoan main" >> /etc/apt/sources.list
echo "deb-src http://ppa.launchpad.net/pandaos/desktop/ubuntu eoan main" >> /etc/apt/sources.list
```
```好的到此完成了,你可以重启系统.祝你使用愉快good luck^-^```
