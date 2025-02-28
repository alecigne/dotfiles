#!/bin/bash

# Decrypt (if necessary)

RCLONE_DIR="rclone/.config/rclone"
RCLONE_CONF_FILE="${RCLONE_DIR}/rclone.conf"
RCLONE_GPG_FILE="${RCLONE_DIR}/rclone.conf.gpg"

if [ ! -f "${RCLONE_CONF_FILE}" ]; then
    gpg -o "${RCLONE_CONF_FILE}" --pinentry-mode loopback -d "${RCLONE_GPG_FILE}"
fi

# Stow

PACKAGES="alacritty common-lisp cvim dunst emacs gitconfig i3 irssi ledger password-store rofi stumpwm tmux urxvt xmodmap zsh"
PACKAGES_NO_FOLDING="cmus gnupg rclone vscode wallpapers"

stow -v ${PACKAGES} -t ${HOME}
stow -v ${PACKAGES_NO_FOLDING} -t ${HOME} --no-folding
