# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
    else
    color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

alias grep='grep -G'

# some more ls aliases
alias ll='ls -alFG'
alias la='ls -AG'
alias l='ls -CFG'
alias ls='ls -G'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

alias gitpush='git push origin master'
alias gitdiff='git difftool -y -t vimdiff'
alias gitdiffc='git difftool -y -t vimdiff --cached'
alias gdc='git difftool -y -t vimdiff --cached'
alias ga='git add -A'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git difftool -y -t vimdiff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

export ANDROID_SDK=${HOME}/android_sdks
export PATH=${PATH}:${HOME}/android-sdks/tools:${HOME}/android-sdks/platform-tools:${HOME}/mongodb/bin:/usr/local/git/bin:${HOME}/node/bin
export PYTHONPATH=${PYTHONPATH}:${HOME}/tornado:${HOME}/tornado/chat:${HOME}/pymongo:${HOME}/tornado/sockjs-tornado:${HOME}/tornado/mongo-connector:${HOME}/tornado/solr

export L=/tmp
export PS1="\\u@\\h:\\w$ "
alias mongod='sudo rm -rf /data/db/mongod.lock; sudo ${HOME}/mongodb/bin/mongod --nojournal --rest --replSet rs0 --oplogSize 100'
alias tornado='cd ${HOME}/tornado/chat; ./scripts/minify.sh && python ${HOME}/tornado/chat/main.py --logging=debug --debug=1 --minified=false'
alias awsc='ssh -v -i ${HOME}/Dropbox/ChatimityDev/chatimity.pem ubuntu@chat.chatimity.com'

alias wd='cd ${HOME}/tornado/chat'
alias vvim='vim ${HOME}/myvimrc/vimrc'
alias bashrc='source ${HOME}/.bashrc'
alias vbash='vim ${HOME}/.bashrc'
alias vjs='cd ${HOME}/tornado/chat; vim ./static/chat.js'
alias vma='cd ${HOME}/tornado/chat; vim ./main.py'
alias vmg='cd ${HOME}/tornado/chat; vim ./mgr.py'
alias vroom='cd ${HOME}/tornado/chat; vim ./templates/room.html'

