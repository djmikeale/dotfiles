CONFIG_DIR="${HOME}/.zsh"

# History configuration
# todo understand histfile purpose and appendhistory better
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000       # how many lines kept in memory
SAVEHIST=10000       # how many lines saved to disk

setopt appendhistory      # add to history instead of overwriting
setopt sharehistory       # share history across terminals
setopt histignorealldups  # skip duplicates
setopt histreduceblanks   # trim multiple spaces

# initialize zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-history-substring-search

# fuzzy finder
zinit light junegunn/fzf

# ctrl + r to search history
# ctrl + t to fuzzy find files
# alt + c to fuzzy cd into dirs
source <(fzf --zsh)

# tab completions like git [tab] -> add, commit, push, etc.
zinit light Aloxaf/fzf-tab

# ---- Dev QoL ----
# do lazyloading instead:
# zinit ice wait'1'
# zinit light MichaelAquilina/zsh-you-should-use

# ---- Prompt ----
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

# Shared config
source "$CONFIG_DIR"/aliases.zsh
# source "$CONFIG_DIR"/functions.zsh
source "$CONFIG_DIR"/exports.zsh
# source "$CONFIG_DIR"/paths.zsh

autoload -Uz compinit
compinit
# use the following line to cache completions, but
# but make sure I understand it first
#compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"
