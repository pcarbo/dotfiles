export TERM=xterm-color

export PS1="\[\033[38;1;34m\]\u\[$(tput sgr0)\]\[\033[38;1;34m\]@\h:\[$(tput sgr0)\]\[\033[38;1;36m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Source global definitions.
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions.
alias mv='mv -iv'
alias rm='rm -iv'
alias cp='cp -v'
