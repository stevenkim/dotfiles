# .bashrc

# User specific aliases and functions

# Source global definitions
#if [ -f /etc/bashrc ]; then
#  . /etc/bashrc
#fi

# Source Facebook definitions
if [ -f /home/engshare/admin/scripts/master.bashrc ]; then
  . /home/engshare/admin/scripts/master.bashrc
fi

if [ -f /mnt/vol/hive/dis/lib/utils/hive.include ]; then
  source /mnt/vol/hive/dis/lib/utils/hive.include
fi

source ~/.git-prompt.sh

shopt -s checkwinsize

export PATH
unset USERNAME

FB_UID=2003542
export FB_UID

alias ls="ls -la --color=auto"
export GIT_EDITOR='vim'

alias grepr="grep -Rin --color=auto"

alias addb="db d 51037"
alias addevdb="db cdb.admarketdb_sandbox"

alias hphpdl='hphpd -h localhost'

alias ct='ct -f tags --exclude=Makefile'

export EDITOR=vim

function r() {
  echo "fixing up SSH"
  if [[ -n $TMUX ]]; then
    NEW_SSH_AUTH_SOCK=`tmux showenv|grep ^SSH_AUTH_SOCK|cut -d = -f 2`
    if [[ -n $NEW_SSH_AUTH_SOCK ]] && [[ -S $NEW_SSH_AUTH_SOCK ]]; then
      SSH_AUTH_SOCK=$NEW_SSH_AUTH_SOCK
    fi
  fi
}

export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: $(__git_ps1) \[\e[33m\]\w\[\e[0m\]\n\$ '
export PROMPT_COMMAND=''
