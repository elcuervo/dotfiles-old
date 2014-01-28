tmn() {
  tmux -uS /tmp/pair has-session -t $1
  if [[ $? == 1 ]] ; then
    tmux -uS /tmp/pair new-session -s $1 -d
  fi
  tmux -uS /tmp/pair -2 attach -t $1
}

alias tma="tmux -S /tmp/pair attach-session -t $1"
alias tml="tmux -S /tmp/pair list-sessions"
