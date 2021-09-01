# Load autocompletions of installed brew packages
if type brew &>/dev/null; then
  BREW_PATH=$(brew --prefix)
  FPATH=$BREW_PATH/share/zsh-completions:$BREW_PATH/share/zsh/site-functions:$FPATH
  autoload -Uz compinit
  compinit
fi

