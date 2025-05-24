#!/bin/sh

# If param is empty, use prev vim param (from $VIM_PREV)
if [[ "$#" -eq 0 ]]; then
	vim $VIM_PREV
elif [[ "$1" = "-fzf" ]]; then
	dir=$(fzf)
	if [[ ! -z "$dir" ]]; then
		vim "$dir"
	fi
else
	[[ "$1" != "." ]] && export VIM_PREV="$1"  # not require
	vim "$1"
fi
