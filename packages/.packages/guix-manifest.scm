(specifications->manifest
 '("cmus"
   "feh"
   "emacs"
   ;; glibc-locales is necessary since packages installed via Guix
   ;; will not use the locale data of the host system
   "glibc-locales"
   "ncdu"
   "numlockx"
   "password-store"
   "redshift"
   "stow"
   "tree"))
