# 5�����ʰLinux����ĸ��� ���������һ���ܽ᡹

�Դӻ������Ժ�����ʹ� Linux ������ Windows ���������Ҫԭ��Ҳ��˵������˾�� IT ϵͳҪ���� Windows ��
�� Linux ��������İ칫���㲻������������ϰ�ߣ��������ȥ�ˡ����ʱ����� OS X����Ϥ�̶ȷ����� Linux �����ˡ�
�ڼ仨��һ��ʱ�䣬����� Linux ��ϰ�����¼�����������ʵϵͳ���������� Windows ���á�û��������ϰ�߰���

���������һ�꣬�칫ϵͳ�� Android �ϵĿ����Դ�������ˡ���������һ������㣬���Ի��� Linux ��

û���� openSUSE �����Ǵ� Ubuntu ��ʼ�ɡ���Ȼ�ӽ�����������ǰ�������

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

Arch Linux �� Wiki ����[һƪ����](https://wiki.archlinux.org/index.php/Touchpad_Synaptics)
����ϸ�Ľ����� Synaptics �ĸ������á�

�ܵ���˵��ֱ������ **unity-settings-daemon** ���Ϳ��Լ̳о��󲿷� unity �����ϵ�����ѡ�
�������ö�û�б�Ҫ��ͷ����

���⣬��ʱ����Ļ��û�������ĺڵ�����Ҫһ��С�ű������á����һ�� shortcut �ͺ��ˡ�

>      $ (xset dpms force off; sleep 1; xset dpms force on)

### ����ѡ��
���� Linux �°�װ����Ҳ�������ˣ�ֱ�ӿ�����~/.fontsĿ¼��Ϳ��ԣ�����Ҫ�κζ�������á�
��װ���Ŀ���ѵ����壬�����ô���

+ Input Mono (�����ѡ)
+ Noto San (˼Դ���� by Google & Adobe), ������ͱ༭��
+ System San Francisco Display��i3 ϵͳ����
+ Awesome Font��i3 ϵͳ����

### i3�ؼ�����

+ .config/i3/config
+ .config/i3status/config
+ ����Ļ������arandr�����Ժ󣬿��԰����ݴ浽�ļ��С�
+ xprop��ȡӦ�õ�class��Ȼ����i3��assign���ã�����ָ��Ӧ�ó������ĸ�workspace��
+ lxapperance ���á����Ҫ�ֶ����޸ĵĻ����ǵ�Ҫ��� gtk 2 �� gtk 3 �ֱ��޸�
  .gtkrc-2.0
  .config/gtk-3.0/settings.ini
+ ϵͳ����ѡ�� System San Francisco Display 16 ��lxapperance ����ѡ��������壬Ӧ���������ļ������⣿
+ �ܲ�����i3bar����ʾ���������

### �����в���

#### ���� shell

>     $ git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

�� .bashrc �����ӣ�

>     if [ -f ~/.bash-git-prompt/gitprompt.sh ]; then
>        source ~/.bash-git-prompt/gitprompt.sh
>        GIT_PROMPT_ONLY_IN_REPO=1
>        GIT_PROMPT_THEME=Default_Ubuntu
>     fi

#### ����

+ ��ô����ʱ����

>    $ tzselect
����
>    $ dpkg-reconfigure tzdata

����ѡ����ʵ�λ�ã�Ȼ��ѽ���浽 /etc/timezone ��

+ ��������: pavucontrol ���������� GUI
+ ������������ô�������磿 nmcli �Ĺؼ���������Щ��

>     $ nmcli d wifi rescan wlan0

������������ɨ����õ����߽���Ƶ��

>     $ nmcli d wifi list wlan0
>     $ nmcli d wifi connect  <ssid> <password>

���Ǻܼ򵥵�

+ ���أ��� aria2
+ ���� youtube ��Ƶ�� youtube-dl
+ irc �� weechat (todo: ���кܶ಻���õ�)
+ GUI ���ļ��������� PcManFM
+ ��Ƶ�� vlc
+ ��װ�� simplenote
+ û�а�װ dropbox (todo: �ļ�ͬ����ʲô��)
+ ��Ϣ�ɼ��ռ������� evernote ��chrome��֧��ֱ�Ӳ�ѯ evernote �����ݡ�

## ��ǽ�ķ���
+ shadowsocks ����

  Ĭ�ϵ� shadowsocks ��֪Ϊ�β�����ȷ���� M2Crypto ģ�顣ֱ�Ӵ� github ���ؾͺ��ˡ�
  ���� sslocal (������ evernote ��)
+ ��Ը���Ӧ�õ� proxy ����
  
## Emacs

�����������Ǻ���ϲ�ģ�������ΪҪ���¼�����û��ô���ס�����������������ô�����飬�ܶ���ϼ������Ծ��ľͰ���ȥ�ˡ�
����ȥ�Ժ�Ż�ζ�����⵽����Ҫ��ʲô�����أ�

��ϵͳ��д������õķ�����ʵ���� emacs + git ��5���ȥ�ˣ��ƺ�ʲô��û�б仯�ء�

+ How to delete word instead of characters (done) M-backspace
+ iswitchb �Ѿ��������ˣ��� ido

+ �������뷨������
��Ҫ��LC_ALL=zh_CN.UTF-8���������򲻻���ȷѡ��C-space��Ϊ���뷨������ݼ���

### emacs git-mode

��Ȼ�ܼ�ª�������þͺ�

>  M-x git-status
>  �� m �� mark �ļ�
>  �� c ���� commit changelog д��ģʽ
>  C-c C-c �ύ commit

### ע�� C-z ������

C-z ������ suspend-frame ���� X �����£�����Ӧ���ǰ�Ӧ����С���ġ�ƫƫ i3 ��֧����С���ĸ��
ֻ���л�������� workspace ��Ȼ���ٴ��л�������

## Ubuntu�������������
### get list of files inside the package
+ dpkg -L <pkg name>
### query the package that specific files belong to
+ apt-file

## choice of web browser
+ [This](http://blog.getbatterybox.com/which-browser-is-the-most-energy-efficient-chrome-vs-safari-vs-firefox/)
  is a interesting read on energy efficient comparision between major browsers

+ Ŀǰ���� firefox �ǱȽϺõ�ѡ��ϵͳ�ĸ���һֱ�Ƚϵ�

+ Firefox ������� Alt+<num> �ķ�ʽ��ѡ�� TAB
+ ������ǩ�� **raindrop.io**  

## ��ȫ����

### ����������

+ openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=XINWEI/"
+ mokutil --import MOD.der
+ sign-file MOD.priv MOD.der wl.ko

### 16.04��bug

��֧��mok���key���룬/proc/keys�￴����
keyctl list %:.system_keyring��û��

+ mokutil --disable-validation # ��ֹʹ�ð�ȫ�������ģ����֤

## todo:

+ how to copy-paste between x applications ? universal way.
$(xclip -o)

