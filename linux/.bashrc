if [ $TERM == "xterm-256color" ]; then
  export PS1="\[\033[38;1;34m\]\u\[$(tput sgr0)\]\[\033[38;1;34m\]@\h:\[$(tput sgr0)\]\[\033[38;1;36m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
fi

# Source global definitions.
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions.
alias mv='mv -iv'
alias rm='rm -iv'
alias cp='cp -iv'

# Give group write permissions by default, and World no permissions.
umask 0007
