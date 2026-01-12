zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

if [[ "$(uname -s)" == "Linux" ]]; then
  # Ubuntu / WSL: install latest fzf via git installer (outdated on apt)
  if [[ ! -d "$HOME/.fzf" ]]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"
    "$HOME/.fzf/install" --all --no-update-rc
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
  fi

elif [[ "$(uname -s)" == "Darwin" ]]; then
  # macOS
  zinit light junegunn/fzf
fi
