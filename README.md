# 5�����ʰLinux����ĸ��� ���������һ���ܽ᡹

## open questions:
1. how to set ģ��ƴ�� for С��˫ƴ in Rime
2. how to read weibo and weixin on the command line ? (or any low cost terminal application)

�Դӵ���Ϊ�Ժ�����ʹ� Linux ������ Windows ���������Ҫԭ��Ҳ��˵������˾�� IT ϵͳҪ���� Windows ���� Linux ��������İ칫���㲻����
��������ϰ�ߣ��������ȥ�ˡ����ʱ����� OS X����Ϥ�̶ȷ����� Linux �����ˡ�
�ڼ仨��һ��ʱ�䣬����� Linux ��ϰ�����¼�����������ʵϵͳ���������� Windows ���á�û��������ϰ�߰���

���������һ�꣬�칫ϵͳ�� Android �ϵĿ����Դ�������ˡ���������һ������㣬���Ի��� Linux ��

û���� opensuse �����Ǵ� Ubuntu ��ʼ�ɡ���Ȼ�ӽ�����������ǰ�������

## ���滷����ѡ��
��Ϊ�� Ubuntu ��������ʵ������ Unity �� i3 ��ѡ�������ܰ����������� i3 ��

### X11����

�Զ��������Ѿ��ǳ����ˡ�XPS 13�Ǹ� *QHD* �ֱ��ʵ���Ļ������ DPI ��Ҫ�ر��չˡ�

Touchpad ���ǻ�������ʹ�ù����б��󴥣�PalmDetect�������£���ʵ��Ч���ܲ

>      $ synclient PalmDetect=1 PalmMinWidth=5 PalmMinZ=200

ʵ��ʹ�ã�**syndaemon** �ķ������ã�������Ϊȱʡ�����

>      $ syndaemon -i 2 -k -t -R -d

���У��κ�ʱ������� **synclient** ����̬����������TouchpadOff

>      $ synclient TouchpadOff=1

+ TouchpadOff Ϊ0ʱ����������Ӧ Tap, Move, Scroll �� Click
+ Ϊ1ʱ������Ӧ�κζ���
+ Ϊ2ʱ����Ӧ Move �� Click��Tap �� Scroll �رա�

���Լ򵥵���֤��

>     $ sleep 5; synclient -l | grep -i touchpadoff

ȷ���ڲ��Ӵ����̵�����£�TouchpadOff ���Զ�����Ϊ0�����򣬻ᱻ����Ϊ2��

Arch Linux �� Wiki ����[һƪ����][https://wiki.archlinux.org/index.php/Touchpad_Synaptics]��
��ϸ�Ľ����� Synaptics �ĸ������á�

���⣬��ʱ����Ļ��û�������ĺڵ�����Ҫһ��С�ű������á����һ�� shortcut �ͺ��ˡ�

>      $ (xset dpms force off; sleep 1; xset dpms force on)

�ܵ���˵��ֱ������ unity-settings-daemon���Ϳ��Լ̳о��󲿷� unity �����ϵ�����ѡ��ȴ�ͷ����Ҫ�򵥵Ķࡣ


### ����ѡ��
���� Linux �°�װ����Ҳ�������ˣ�ֱ�ӿ�����~/.fontsĿ¼��Ϳ��ԣ�����Ҫ�κζ�������á�
��װ���Ŀ���ѵ����壬�����ô���

+ Input Mono (�����ѡ)
+ Noto San (˼Դ���� by Google & Adobe), ������ͱ༭��
+ System San Francisco Display��ϵͳ����
+ Awesome Font��ϵͳ����

### i3�ؼ�����

+ .config/i3/config
+ .config/i3status/config
+ ����Ļ������arandr�����Ժ󣬿��԰����ݴ浽�ļ��С�
+ xprop��ȡӦ�õ�class
+ lxapperance ����
  .gtkrc-2.0
  .config/gtk-3.0/settings.ini
+ ����System San Francisco Display 16 or others
+ �ܲ�����i3bar����ʾ

### �����в���
+ ��ô����ʱ����/etc/timezone
+ ��������: pavucontrol ���������� GUI
+ ������������ô�������磿
   nmcli�Ĺؼ����


## ��ǽ�ķ���
+ shadowsocks����

  Ĭ�ϵ�shadowsocks��֪Ϊ�β�����ȷ���� M2Crypto ģ�顣ֱ�Ӵ� github ���ؾͺ��ˡ�
  ����sslocal (������ evernote ��)

## Emacs
+ How to delete word instead of characters (done) M-backspace

## Ubuntu�������������
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
