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
alias sample="PS1='$ '"

export PATH="/work/bin:$PATH"

alias grep="grep --color=auto"
alias halt='sudo /usr/sbin/shutdown -h 0'
alias reboot='sudo /usr/sbin/reboot'
alias v='/usr/bin/vagrant'
alias gui='sudo systemctl set-default graphical.target'
alias cui='sudo systemctl set-default multi-user.target'

alias act-service='sudo podman system service -t 0 &'
alias act='sudo /root/bin/act'

function ansible-galayx-init-roles() { ansible-galaxy init roles/${1}; }
function gitc() { git clone git@github.com:YumaYX/${1}.git; }

