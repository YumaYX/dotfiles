# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs
# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null 2>&1 ; then eval "$(rbenv init -)"; fi

# rust
if [ -f ${HOME}/.cargo/env ]; then
  . ${HOME}/.cargo/env
fi
export PATH="${HOME}/.cargo/bin:$PATH"

# brew
if [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi
