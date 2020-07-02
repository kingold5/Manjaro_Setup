# Manjaro_Setup
My Manjaro essential setup from a fresh installment


## Set bash promp color and show time
'''
PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W \A\[\033[01;32m\]]\$\[\033[00m\] '
'''

## Install neovim
'''
sudo pacman -S nvim
'''

## Install amix/vimrc to stylish nvim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

## Let nvim use settings from .vimrc, edit ~/.config/nvim/init.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
            source ~/.vimrc

## Enable clipboard between neovim and system clipboard
Install xclip in system
'''
sudo pacman -S xclip
'''
Open ~/.vim_runtime/my_configs, add
set clipboard+=unnamedplus
Copy from nvim to system clipboard "+y
Copy from system clipboard to nvim ctrl+shift+v

## Check neovim health
:checkhealth

## Install redshift to filter out blue light
'''
sudo pacman -S redshift
'''
Add configure at ~/.config/redshift/redshift.conf

## Install calibre
'''
pamac install calibre-python3
'''

## Install virtualbox
'''
sudo pacman -S linux-lts-header
sudo pacman -S virtualbox virtualbox-host-dkms
'''
In virtualbox
Add vdi in virtual media manager
Add vdi in setting | Storage | controller SATA

## Install dock plank(very simple)
'''
sudo pacman -S plank
'''
press Ctrl + right click, go to references, set Theme as transparent.
Remove field line, Window Manager Tweaks | Compositor | uncheck show shadow under dock windows

## Setup flask environment
'''
python3 -m pip install --user --upgrade pip
python3 -m pip install --user virtualenv
python3 -m pip venv environment_name
sudo pacman -S mariadb
pip install -r requirement.txt
'''

## Limit spotify cache size
'''
nvim ~/.config/spotify/prefs
'''
Append size in MB
'''
storage.size=512
'''

## Fix fcitx for all applications(xfce)
Append following in file ~/.pam_environment, re login
'''
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
'''

## !!Do not install Qt from pacman
Install Qt from standalone installer

## Setup ssh connection to Github
after generating the rsa key, we need to install the x11-ssh-askpass, otherwise the vscode won't work with git
'''
sudo pacman -S x11-ssh-askpass
'''

## Setup archlinux ssh server
'''
sudo pacman -S openssh
sudo systemctl enable sshd.service      # enable sshd on boot
sudo systemctl start sshd.service
sudo systemctl status sshd
ip a        # get server ip address
ssh username@ip.server      # check if ssh login possible
'''
Send public key to server
'''
ssh-copy-id -i ~/.ssh/id_rsa.pub username@ip.server
'''
Setup /etc/ssh/sshd_config on server
....

Setup alias in .bashrc for fast login
'''
alias ssh_home='ssh username@ip.server'
'''

## tmux settings
add alias tmew='tmux new -s ' in ~/.bashrc
setup ~/.tmux.conf
