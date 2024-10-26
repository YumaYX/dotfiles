# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH


# User specific aliases and functions
PS1='[\u@\h \w] $ '
export PATH="/work/bin:$PATH"

# Ruby
export RUBYOPT=--yjit

# System
alias sample="PS1='$ '"
alias grep="grep --color=auto"
alias halt='sudo /usr/sbin/shutdown -h 0'
alias reboot='sudo /usr/sbin/reboot'

# GUI/CUI
alias gui='sudo systemctl set-default graphical.target'
alias cui='sudo systemctl set-default multi-user.target'

# act
alias act-service='sudo podman system service -t 0 &'
alias act='sudo /root/bin/act'

# Vagrant
alias v='/usr/bin/vagrant'

# Python
alias venv='source venv/bin/activate'

# Ansible
function ansible-galayx-init-roles() { ansible-galaxy init roles/${1}; }

# Git
function gitc() { git clone git@github.com:YumaYX/${1}.git; }

