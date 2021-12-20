- 安装方法

`cd ~`

`git clone https://github.com/yiouejv/vim`

`cp vim .vim -r`

- 可能存在的问题

文本文件所使用的换行符，在不同的系统平台上是不一样的。

UNIX/Linux 使用的是 0x0A（LF），早期的 Mac OS 使用的是 0x0D（CR），后来的 OS X 在更换内核后与 UNIX 保持一致了。

但 DOS/Windows 一直使用 0x0D0A（CRLF） 作为换行符。

**查看编码**

`hexdump -c filename`

**批量将文件的 CRLF 转换为 LF**

`sudo apt-get install dos2unix`

`find . -type f	xargs dos2unix`

-------------------------

**tmux**

安装tmux：

`sudo apt-get install tmux`

快捷键：

- session:
    - tmux new -s demo: 新建一个session, alias tnew='tmux new -s'
    - tmux att -t demo: 进入到demo session, alias tatt='tmux att -t'
    - tmux kill-session -t demo: kill session, alias tkill='tmux kill-session -t'
    - tmux ls: 查看 tmux 当前拥有哪些session, alias tls='tmux ls'
    - ctrk b d: exit session
    - ctrl b s: 查看当前的session, 上下左右键切换session

- window:
    - ctrl b c: 新建window, 同属当前session
    - ctrl b n: 去下一个window
    - ctrl b p: 去前一个window
    - ctrl b w: 查看所有window, 按下0-9切换
    - ctrl b ,: 重命名window
    - ctrl b f: 输入window 的名字切换

- panel:
    - ctrl b x: 关闭当前panel
    - ctrl b %: 垂直创建panel
    - ctrl b ": 水平创建panel
    - ctrl b o: 切换panel
    - ctrl b ctrl o: 旋转panel
    - ctrl b ;: 切换到最后一次使用的panel
    - ctrl b z: 当前panel 全屏，重新按切回来
    - ctrl b 方向键: 移动光标切换面板

- 自定义 keyboard:

vim ~/.tmux.conf

```
# 绑定hjkl键为面板切换的上下左右键
bind -r k select-pane -U # 绑定k为↑
bind -r j select-pane -D # 绑定j为↓
bind -r h select-pane -L # 绑定h为←
bind -r l select-pane -R # 绑定l为→
```
