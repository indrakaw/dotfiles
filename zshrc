# PATHs
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# Install oh-my-zsh if doen'st exist
[ ! -d ~/.oh-my-zsh ] &&
  echo "Installing oh-my-zsh" &&
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Check, is term running on tty or not?
case $(tty) in /dev/tty[0-6]*)
  echo "It seems you're running on tty or Xorg disabled."
  echo "I recommend you to start fbterm for best experienced."
  # exec fbterm
esac

# oh-my-zsh config
# See https://github.com/robbyrussell/oh-my-zsh/wiki/
export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=13

ZSH_THEME="bullet-train"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

BULLETTRAIN_PROMPT_ADD_NEWLINE=false

if [[ $TERM = "Linux" ]]; then
  # If on tty, do something
fi

plugins=(git hub rbenv)

# Load ZSH
source $ZSH/oh-my-zsh.sh

# User configuration
zstyle ':completion:*' rehash true

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Load env all components.
for file in ~/.{aliases,aliases_private,zshenv}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
