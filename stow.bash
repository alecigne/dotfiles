#!/bin/bash

PACKAGES="cmus common-lisp cvim emacs fonts gitconfig gnupg i3 packages password-store rofi stumpwm wallpapers xmodmap zsh"
PACKAGES_NO_FOLDING="vscode"

stow -v ${PACKAGES} -t ${HOME}
stow -v ${PACKAGES_NO_FOLDING} -t ${HOME} --no-folding
