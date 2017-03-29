export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$HOME/.local/heroku/bin:/usr/local/heroku/bin:$PATH"

command -v rbenv >/dev/null 2>&1 \
  && eval "$(rbenv init -)"
