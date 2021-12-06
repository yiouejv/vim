- 1. 安装方法

`cd ~`

`git clone https://github.com/yiouejv/vim`

`cp vim .vim -r`

- 2. 可能存在的问题

文本文件所使用的换行符，在不同的系统平台上是不一样的。

UNIX/Linux 使用的是 0x0A（LF），早期的 Mac OS 使用的是 0x0D（CR），后来的 OS X 在更换内核后与 UNIX 保持一致了。

但 DOS/Windows 一直使用 0x0D0A（CRLF） 作为换行符。

**查看编码**

`hexdump -c filename`

**批量将文件的 CRLF 转换为 LF**

`sudo apt-get install dos2unix`

`find . -type f	xargs dos2unix`
