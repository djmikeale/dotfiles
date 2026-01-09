# ---- Minimal entrypoint ----
export ZDOTDIR="$HOME/.zsh"

# Load zinit + plugins
source "$ZDOTDIR"/zinit.zsh

# Shared config
source "$ZDOTDIR"/aliases.zsh
source "$ZDOTDIR"/functions.zsh
source "$ZDOTDIR"/exports.zsh
source "$ZDOTDIR"/paths.zsh
source "$ZDOTDIR"/completion.zsh

# OS-specific
if [[ "$OSTYPE" == darwin* ]]; then
  source "$ZDOTDIR"/os/macos.zsh
elif grep -qi microsoft /proc/version 2>/dev/null; then
  source "$ZDOTDIR"/os/wsl.zsh
else
  source "$ZDOTDIR"/os/linux.zsh
fi
