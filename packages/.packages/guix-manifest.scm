(specifications->manifest
 '("cmus"
   "feh"
   "emacs"
   "filezilla"
   ;; glibc-locales is necessary since packages installed via Guix
   ;; will not use the locale data of the host system
   "glibc-locales"
   "ledger"
   "ncdu"
   "numlockx"
   "password-store"
   "ranger"
   "redshift"
   "restic"
   "stow"
   "tmux"
   "tree"))
