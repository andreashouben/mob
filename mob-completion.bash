#!/usr/bin/enb bash

_mob_completions()
{
    
  command="${COMP_WORDS[1]}"

  case "$command" in
    start)
        if [ "${#COMP_WORDS[@]}" != "2" ]; then
            return
        fi
        COMPREPLY=("$(compgen -W "--include-uncommitted-changes")");;
    next)
        COMPREPLY=("$(compgen -W "--stay")");;
    done)
        COMPREPLY=("$(compgen -W "--no-squash --squash")");;
    reset)
        COMPREPLY=("$(compgen -W "--branch")");;
    "")
        COMPREPLY=("$(compgen -W "start next done reset" "${COMP_WORDS[1]}")")
  esac  

  
  
}


complete -F _mob_completions mob