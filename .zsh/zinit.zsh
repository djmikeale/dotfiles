# ---- zinit bootstrap ----
if [[ ! -f "$HOME/.zinit/bin/zinit.zsh" ]]; then
  mkdir -p ~/.zinit/bin
  git clone https://github.com/zdharma-continuum/zinit.git ~/.zinit/bin
fi
source "$HOME/.zinit/bin/zinit.zsh"

# ---- Core UX ----
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-history-substring-search

# ---- FZF ----
zinit light junegunn/fzf
zinit light junegunn/fzf-git.sh
zinit light Aloxaf/fzf-tab

# ---- Dev QoL ----
zinit light MichaelAquilina/zsh-you-should-use

# ---- Git ----
zinit snippet OMZ::plugins/git/git.plugin.zsh

# ---- Prompt ----
command -v starship >/dev/null && eval "$(starship init zsh)"
