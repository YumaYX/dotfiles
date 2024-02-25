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
if [ -f ~/.cargo/env ]; then
  . ~/.cargo/env
fi
