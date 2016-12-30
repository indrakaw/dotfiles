# fish config file, aka startup script
source ~/.config/fish/aliases.fish

# load env
set -x fish_user_paths $fish_user_paths (npm bin -g 2>/dev/null)

if test -d $HOME/.rbenv
  set -x fish_user_paths $fish_user_paths $HOME/.rbenv/bin
  status --is-interactive; and source (rbenv init -|psub)
else if test -d $HOME/.rvm
  set -x fish_user_paths $fish_user_paths $HOME/.rvm/bin
  eval rvm default 2>/dev/null
end

# constants
set -e fish_greeting
