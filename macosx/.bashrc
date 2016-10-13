# Git completion.
source ~/git-completion.bash

export SHELL=/bin/bash
export TERM=xterm-color
export EDITOR=/usr/bin/emacs

# Set the default file permissions.
umask 77

# Macports.
PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Added by Anaconda3 4.1.1 installer.
export PATH="/Users/pcarbo/anaconda3/bin:$PATH"

# My executables.
PATH=/Users/pcarbo/bin:$PATH
export PATH

# Multicore R.
export LD_LIBRARY_PATH=/usr/lib64/atlas:/tmp/pcarbo/LALibs/lib
export R_PLASMA_NUM_THREADS=8

# Set the prompt.
source ~/.bash_prompt

# Aliases.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias xdvi='xdvi -expert -s 5 -hushstdout -geometry 1000x850'
alias R='R --no-save'
alias top='top -o cpu'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
