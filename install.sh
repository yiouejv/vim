git clone https://github.com/yiouejv/vim
mkdir .vim
cp vim/colors -r .vim/colors
cp vim/autoload -r .vim/autoload
cp vim/plugged -r .vim/plugged
cp vim/.vimrc .vimrc
cp vim/.zshrc .zshrc


echo "alias tnew='tmux new -s'" >> .bashrc
echo "alias tatt='tmux att -t'" >> .bashrc
echo "alias tkill='tmux kill-session -t'" >> .bashrc
echo "alias tls='tmux ls'" >> .bashrc

echo "# 绑定hjkl键为面板切换的上下左右键" > ~/.tmux.conf
echo "bind -r k select-pane -U # 绑定k为↑" >> ~/.tmux.conf
echo "bind -r j select-pane -D # 绑定j为↓" >> ~/.tmux.conf
echo "bind -r h select-pane -L # 绑定h为←" >> ~/.tmux.conf
echo "bind -r l select-pane -R # 绑定l为→" >> ~/.tmux.conf

apt-get install autojump
source .zshrc
