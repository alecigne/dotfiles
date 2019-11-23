#!/bin/bash

PACKAGES="cmus common-lisp cvim emacs fonts gitconfig gnupg i3 packages password-store rofi stumpwm wallpapers xmodmap zsh"

stow -v ${PACKAGES} -t ${HOME}
