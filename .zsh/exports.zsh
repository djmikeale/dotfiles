export EDITOR=vim

export FZF_DEFAULT_OPTS="
  --height=40%
  --layout=reverse
  --border
  --bind=ctrl-j:down,ctrl-k:up
"

export FZF_CTRL_T_COMMAND='rg --files'
export FZF_ALT_C_COMMAND='fd . --type d'
