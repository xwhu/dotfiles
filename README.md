# 5年后重拾Linux桌面的感受 「及经验的一点总结」

## open questions:
1. how to set 模糊拼音 for 小鹤双拼 in Rime
2. how to read weibo and weixin on the command line ? (or any low cost terminal application)

自从到华为以后，桌面就从 Linux 换成了 Windows 。背后的主要原因也是说整个公司的 IT 系统要依赖 Windows ，用 Linux 连最基本的办公都搞不定。
这样慢慢习惯，就五年过去了。这段时间里，对 OS X的熟悉程度反而比 Linux 更高了。
期间花了一点时间，想把用 Linux 的习惯重新捡起来。但其实系统基本还是在 Windows 下用。没法，就是习惯啊。

不过最近这一年，办公系统在 Android 上的可用性大大提升了。总算有了一个切入点，可以换上 Linux 。

没有用 opensuse ，还是从 Ubuntu 开始吧。虽然从结果看，可能是半斤八两。

## 桌面环境的选择
因为是 Ubuntu ，所以其实就是在 Unity 和 i3 里选。最后接受安利，用上了 i3 。

### X11配置

自动的配置已经非常好了。XPS 13是个 *QHD* 分辨率的屏幕，所以 DPI 需要特别照顾。

Touchpad 总是会在正常使用过程中被误触，PalmDetect配置如下，但实际效果很差。

>      $ synclient PalmDetect=1 PalmMinWidth=5 PalmMinZ=200

实际使用，**syndaemon** 的方案更好，可以作为缺省启动项。

>      $ syndaemon -i 2 -k -t -R -d

其中，任何时候可以用 **synclient** 来动态调整。比如TouchpadOff

>      $ synclient TouchpadOff=1

+ TouchpadOff 为0时，触摸板响应 Tap, Move, Scroll 和 Click
+ 为1时，不响应任何动作
+ 为2时，响应 Move 和 Click。Tap 和 Scroll 关闭。

可以简单的验证下

>     $ sleep 5; synclient -l | grep -i touchpadoff

确认在不接触键盘的情况下，TouchpadOff 被自动设置为0。否则，会被设置为2。

Arch Linux 的 Wiki 上有[一篇文章][https://wiki.archlinux.org/index.php/Touchpad_Synaptics]很
详细的解释了 Synaptics 的各种配置。

此外，有时候屏幕会没有由来的黑掉，需要一个小脚本来重置。设成一个 shortcut 就好了。

>      $ (xset dpms force off; sleep 1; xset dpms force on)

总的来说，直接运行 unity-settings-daemon，就可以继承绝大部分 unity 桌面上的配置选项，比从头配置要简单的多。


### 字体选择
现在 Linux 下安装字体也很容易了，直接拷贝到~/.fonts目录里就可以，不需要任何多余的配置。
安装了四款免费的字体，各有用处。

+ Input Mono (编程首选)
+ Noto San (思源黑体 by Google & Adobe), 浏览器和编辑器
+ System San Francisco Display，系统界面
+ Awesome Font，系统界面

### i3关键配置

+ .config/i3/config
+ .config/i3status/config
+ 多屏幕设置用arandr配置以后，可以把内容存到文件中。
+ xprop获取应用的class
+ lxapperance 设置
  .gtkrc-2.0
  .config/gtk-3.0/settings.ini
+ 字体System San Francisco Display 16 or others
+ 能不能在i3bar上显示

### 命令行操作
+ 怎么调整时区？/etc/timezone
+ 调整音量: pavucontrol 命令行启动 GUI
+ 在命令行下怎么连接网络？
   nmcli的关键命令？


## 翻墙的方案
+ shadowsocks配置

  默认的shadowsocks不知为何不能正确加载 M2Crypto 模块。直接从 github 下载就好了。
  启动sslocal (配置在 evernote 里)

## Emacs
+ How to delete word instead of characters (done) M-backspace

## Ubuntu的软件包管理方法
### get list of files inside the package
+ dpkg -L <pkg name>
### query the package that specific files belong to
+ apt-file


## choice of web browser
+ [This](http://blog.getbatterybox.com/which-browser-is-the-most-energy-efficient-chrome-vs-safari-vs-firefox/)
  is a interesting read on energy efficient comparision between major browsers

## software license
+ The download link for FlareGet Pro is given to you above. Download and install FlareGet Pro. After installation, run it and register it with the following:
    License key: 5B755-E8178-BABD7-BB8EB-026CF
