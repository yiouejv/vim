
今日稍微介绍一下vim的配置，.vimrc 配置文件。

如果你没有配置过vim，当你敲击vim按下回车，终端将显示一个黑框框出来。

或者你输入vim + 文件名将用vim打开这个文件，文件的内容将显示在这个黑框框的区域，相较于其他的编辑器，此时你的感觉并不是很好。

并且如果你没有学习过vim 都不知道该怎么操作，看着黑黑的区域都不知如何下手。

好了，进入正题，此时进入的是vim的普通模式，还是记得我们普通模式下有哪些快捷键吗。

不记得了找上一篇文章去看，哦，还有一个vim的演练视频你也可以参考一下。（演练视频里的vim是安装过插件的，有了尊贵的皮肤，没有那么丑，哈哈哈）

进入vim，我们怎么让vim像其他编辑器一样显示行号呢？

- :set number 普通模式下输入引号set number 将显示行号
- :set nonumber 不显示行号，默认就是不显示行号

这两条命令就可以控制vim里是否显示行号。

什么？你觉得太长了？ 输入 :set nu 可以短一点，:set nonu也是一样的道理。

每次都输入命令未免也看麻烦了吧，这就到了我们的 .vimrc 配置文件啦。

在你的linux 家目录下创建一个 .vimrc 文件，保存你的配置，vim将在每次启动时加载这些配置。

让我们编辑一个配置文件。

cd 直接进入家目录。

vim .vimrc 用vim编辑一个.vimrc 文件，文件不存在将会被创建。

按下小a，进入插入模式，在当前光标下 append，写入 set nu。

写好了怎么保存? 按下键盘左上角的 Esc 键, 从插入模式退出到普通模式, 输入 :w  保存

你会发现怎么还是没行号, 此时配置文件改变了并没有重新加载, 你有两种方式重载配置.

1. 退出vim, 重新打开vim, 配置文件会重新加载.
2. 不退出, 修改保存之后输入命令 :so %

好了, 你会配置基本的vim了, 下面将给你一些vim的配置项, 如有需要你可以通过搜索引擎找到你需要的其他配置.

- syntax on 打开语法高亮, 自动识别代码，使用多种颜色显示。
- set showcmd 命令模式下，在底部显示，当前键入的指令。比如，键入的指令是dd，那么底部就会显示d，当键入第二个d的时候，操作完成，显示消失。
- set encoding=utf-8 使用utf8编码
- `set t_Co=256` 启用256 配色, 启用这个你的vim才能五颜六色
- set autoindent 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致。
- set tabstop=2 按下 Tab 键时，Vim 显示的空格数。
- set shiftwidth=4 在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数。
- set expandtab 由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格。
- set softtabstop=2 Tab 转为多少个空格。
- set hlsearch 搜索时，高亮显示匹配结果。
- set incsearch  输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
- set ignorecase 搜索时忽略大小写。

快去你的vim试一下吧，学vim一定要用起来，不用过两天马上就忘了，相当于白学。

基础配置就讲到这里，后面还会介绍vim插件的安装。

请关注我，继续后面的学习吧，微信公众号【程序员杨小哥】, 联系我加入学习群。
