#!/bin/bash

_lemp_completions() {
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    COMPREPLY=()
    return
  fi

  COMPREPLY=($(compgen -W "start stop restart status logs version help" -- "${COMP_WORDS[1]}"))
}

complete -o bashdefault -o default -F _lemp_completions lemp