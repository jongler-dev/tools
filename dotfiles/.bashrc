### embedd the following in the existing .bashrc. but also look at .kshrc if it exists...

# redirect display if you have X-window installed
export DISPLAY=<pc_name>:0

# for adding a timestamp to the history command
export HISTTIMEFORMAT="%F %T "

# length of history's history
export HISTSIZE=500

# set the base PS1
PS1='\[\033[1;31m\]\w/\[\033[0;38m\]> \[\033[0;38m\]'

# see repository status in prompt
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    
    # git prompt variables, see .git-prompt.sh for more info
    GIT_PS1_SHOWDIRTYSTATE=1
    GIT_PS1_SHOWSTASHSTATE=1
    GIT_PS1_SHOWUNTRACKEDFILES=1
    GIT_PS1_SHOWUPSTREAM="verbose"

    # w prints absolute cwd path, W prints current folder only
    PS1='\[\033[1;31m\]\w$(__git_ps1 " (%s)")\[\033[0;38m\] \[\033[0;38m\]\$ '
    # export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
fi

export PS1


# alias file
if [ -f ~/.alias ]; then
    source ~/.alias
fi

# git auto completion
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

