#!/bin/sh
# Tweaked Ubuntu 16.04 LTS's ~/.bashrc
# Backup at https://git.io/vwrmS

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Everything goes to ~/.bash_profile
source ~/.bash_profile

# Rest is custom shell

# check, is rbenv exist? if isn't, fall back to rvm
if [ -d "$HOME/.rbenv" ]; then

  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

elif [ -d "$HOME/.rvm" ]; then

  export PATH="$HOME/.rvm/bin"

fi

# run: npm config set prefix '~/.npm-global'
export PATH="~/.npm-global/bin:$PATH"

export PATH="/usr/local/heroku/bin:$PATH"
export PATH="~/.config/composer/vendor/bin:$PATH"

export PATH="~/bin:$PATH"
