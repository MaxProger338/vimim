#!/bin/sh

# This is my aliases
# Insert it into .bashrc

# .local/bin/vimim.sh - my script

# Default vim
alias v=". $HOME/.local/bin/vimim.sh"
# Vim with fzf
alias vf='. $HOME/.local/bin/vimim.sh $(fzf)'
alias vv=". $HOME/.local/bin/vimim.sh ."

# For use vim with root-permisstions (replace doas with sudo)
alias V="doas vim"
