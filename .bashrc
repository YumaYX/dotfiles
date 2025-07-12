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
export PATH="/work/bin:$PATH"
alias today='date +%F'
alias yyyymmdd='date +%F | tr -d "-"'

# Ruby
export RUBYOPT=--yjit

# System
alias grep="grep --color=auto"
alias halt='sudo /usr/sbin/shutdown -h 0'
alias reboot='sudo /usr/sbin/reboot'
alias update='sudo /usr/bin/dnf -y update'
alias sl='/bin/ls'

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
function ansible-galaxy-init-roles() { ansible-galaxy init roles/${1}; }

# Git
function gitc() { git clone git@github.com:YumaYX/${1}.git; }

# Rust
alias ccargo='podman run --rm -v $(pwd):/m:z -w /m rust:latest cargo'

# Prompt
alias sample="PS1='$ '"
resetprompt() {
  PS1='\[\e[38;5;208m\]\u\[\e[0m\]@\[\e[38;5;208m\]\h \w\[\e[0m\]\$ '
}
resetprompt

# awk
alias awkf="awk '{print \$1}'"
alias awks="awk '{print \$2}'"
alias awkt="awk '{print \$3}'"
alias awkl="awk '{print \$NF}'"

