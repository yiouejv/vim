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

---------------------------
vim 常用技巧:

- . 命令，重复上次修改
- 用次数做简单的算术运算: n<C-a> 找到第一个数字 + n, <C-x> 做减法
- ; 重复查找f{char}的操作，, 则回退
- 查找和替换: / 查找，使用 n, N挑战到某个，cw进行修改，继续n跳转，.命令实现替换
- 插入-普通模式: 插入模式<C-o> 进入此模式，执行一次普通模式命令，随后自动回到插入模式
- 连续调用两次操作符时，操作将作用于当前行，如 dd, gcc, yy, >>
- 插入模式 <C-h> 退格，<C-w> 回删一个单词，<C-u> 回删至行首

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
-------------------------------

**其他工具**

autojump

- 安装：`apt-get install autojump`
- 查找: find / -name "autojump.bash"
- .bashrc: ./usr/share/autojump/autojump.bash

用法: j keyword

keyword 为目录关键词, 可以模糊匹配

在使用 cd path 之后会自动记录到库里, 使用次数越多, 优先级越高

/etc/profile.d/autojump.bash 内置了几个方法, 常用的当然就是: j

查看统计: autojump --stat

