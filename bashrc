#!/bin/sh
# Tweaked Ubuntu 16.04 LTS's ~/.bashrc
# Backup at https://git.io/vwrmS

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Everything goes to ~/.bash_profile
source ~/.bash_profile

# Rest is custom shell
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:$HOME/.composer/vendor/bin"
