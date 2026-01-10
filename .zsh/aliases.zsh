alias g='git'
alias ll='ls -lah'
alias path='echo -e ${PATH//:/\\n}'
alias c='clear'
alias qr='pbpaste | qrencode -t ansiutf8'

# override -h and --help to use bat
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
