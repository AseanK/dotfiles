PS1="%{%F{033}%}%n%{%f%}@%{%F{green}%}%m:%{%F{yellow}%}%~%{$%f%}%  "
# Alias

export PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin

# Custom scripts
export PATH="$PATH:$HOME/Bash_scripts"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
# flutter
export PATH="$PATH:$HOME/Mobile/flutter/bin"
alias python="python3"
alias ls='ls -GH'
alias ff='fzf | xargs nvim'
alias t='tmux'
alias v="nvim ."
alias sp="cd \$(ls -d ~/Projects/* | fzf)"
