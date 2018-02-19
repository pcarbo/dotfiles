if [ $TERM == "xterm-256color" ] || [ $TERM == "screen" ]; then
  export PS1="\[\033[38;1;34m\]\u\[$(tput sgr0)\]\[\033[38;1;34m\]@\h:\[$(tput sgr0)\]\[\033[38;1;36m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
  # export PS1="\\$ \[$(tput sgr0)\]"
fi

# Fix locale.
export LC_ALL=C

# Source global definitions.
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Local binaries.
PATH=~/bin:$PATH

# Locally installed Python packages (pip install --user).
export PATH=~/.local/bin:$PATH

# Anaconda3 4.4.0. By default, it is deactivated.
# export PATH=/home/pcarbo/anaconda3/bin:$PATH

# PARDISO
export LD_LIBRARY_PATH=~/pardiso:$LD_LIBRARY_PATH

# SSH agent.
# eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa

# User specific aliases and functions
alias mv='mv -iv'
alias rm='rm -iv'
alias cp='cp -iv'

# Give group write permissions by default, and World no permissions.
umask 0007

# SLURM.
export SACCT_FORMAT="jobid,partition,user,account%12,alloccpus,node%12,start,elapsed,totalcpu,maxRSS,ReqM"
export SQUEUE_FORMAT="%13i %12j %10P %10u %12a %8T %9r %10l %.11L %5D %4C %8m %N"

# Perl.
PATH="/home/pcarbo/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/pcarbo/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/pcarbo/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/pcarbo/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/pcarbo/perl5"; export PERL_MM_OPT;
