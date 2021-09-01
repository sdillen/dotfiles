# gpg tty reference for signing commits
export GPG_TTY="$(tty)"

# Workspace
export WORKSPACE="$HOME/Workspace"

# zsh tmux settings
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOQUIT=true

# Homebrew
export HOMEBREW="$WORKSPACE/homebrew"
export HOMEBREW_BIN="$HOMEBREW/bin"

# Golang
export GOPATH="$WORKSPACE/gocode"
export GOBIN="$GOPATH/bin"

# Git-Get
export GIT_GET_PATH="$WORKSPACE/codebase"
export GIT_GET_HOST="github.com"

# Add vscode into path
export VSCODE_PATH="$HOME/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Build path
export PATH="$PATH:$HOMEBREW_BIN:$GOBIN:$HOME/.krew/bin:$HOME/.bin:$VSCODE_PATH:/Users/dillenbu/Library/Python/3.8/bin"

