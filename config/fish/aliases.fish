# Exported from .aliases
# Some of these will overide default function on
# /usr/share/fish/functions/ll.fish

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias lsl='ls -lhFA | less'
alias fhere='find . -name '

# misc aliases
alias mkdir='mkdir -pv'
alias wget='wget -c'
alias myip='curl http://ipecho.net/plain; echo'
alias catc='pygmentize -g'
alias nautilus='nautilus --no-desktop'

# enable color support of ls and also add handy aliases
if test -x /usr/bin/dircolors
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
end

# typos
alias cd..='cd ..'
alias :q!='exit'
alias quit='exit'
