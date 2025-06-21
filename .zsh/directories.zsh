# Changing/making/removing directory
# setopt auto_pushd
# setopt pushd_ignore_dups
# setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -n 10
  fi
}
# compdef _dirs d

# List directory contents
# check if eza exists on the system
if command -v eza &>/dev/null; then
    # If eza exists, create the alias with icons and long format
    alias l='eza --group-directories-first --icons -lag'
    alias lt='eza --group-directories-first --icons -la -T'
    alias ll='eza --group-directories-first --icons -lg'
else
    # If eza does not exist, fallback to ls with long format
    alias ll='ls -lah'
    alias l='ls -lh'
fi
