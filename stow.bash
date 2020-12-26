#!/bin/bash

PACKAGES="common-lisp cvim emacs fonts gitconfig i3 ledger password-store rofi stumpwm urxvt wallpapers xmodmap zsh"
PACKAGES_NO_FOLDING="cmus gnupg vscode"

stow -v ${PACKAGES} -t ${HOME}
stow -v ${PACKAGES_NO_FOLDING} -t ${HOME} --no-folding
