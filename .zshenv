# default editor
export EDITOR="nvim"

# gpg tty reference for signing commits
export GPG_TTY="$(tty)"

# Workspace
export WORKSPACE="$HOME/Workspace"

export DOCKER_HOST="ssh://docker-jump"

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

# Build path
export PATH="$PATH:$HOMEBREW_BIN:$GOBIN:$HOME/.krew/bin:$HOME/.bin:$HOME/.local/bin:/Users/dillenbu/Library/Python/3.8/bin"

# LLVM path
export PATH="/Users/dillenbu/Workspace/homebrew/opt/llvm/bin:$PATH"

# Java Language Server
export PATH="$HOMEBREW/opt/openjdk@11/bin:$PATH"
export CPPFLAGS="-I/Users/dillenbu/Workspace/homebrew/opt/openjdk@11/include"

# Add Visual Studio Code (code)
export PATH="$PATH:/Users/dillenbu/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
