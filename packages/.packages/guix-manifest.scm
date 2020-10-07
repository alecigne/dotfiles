(specifications->manifest
 '("borg"
   "cmus"
   "feh"
   "emacs"
   "filezilla"
   ;; glibc-locales is necessary since packages installed via Guix
   ;; will not use the locale data of the host system
   "glibc-locales"
   "i3lock"
   "i3lock-fancy"
   "i3status"
   "ledger"
   "ncdu"
   "numlockx"
   "pandoc"
   "password-store"
   "ranger"
   "redshift"
   "restic"
   "stow"
   "tmux"
   "tree"
   "vlc"))
