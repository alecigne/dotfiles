#!/bin/bash

PACKAGES="alacritty common-lisp cvim dunst emacs gitconfig i3 irssi ledger password-store rofi stumpwm tmux urxvt xmodmap zsh"
PACKAGES_NO_FOLDING="cmus gnupg vscode wallpapers"

stow -v ${PACKAGES} -t ${HOME}
stow -v ${PACKAGES_NO_FOLDING} -t ${HOME} --no-folding
