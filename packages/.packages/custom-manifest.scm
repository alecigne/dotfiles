(use-modules (guix packages)
	     (guix download)
	     (guix build-system gnu)
	     (guix licenses)
	     (guix git-download)
	     (gnu packages pkg-config)
	     (gnu packages xorg)
	     (gnu packages datastructures))

(define package-alttab
  (package
   (name "alttab")
   (version "1.5.0")
   (source (origin
	    (method git-fetch)
	    (uri (git-reference
                  (url "https://github.com/sagb/alttab")
                  (commit (string-append "v" version))))
	    (sha256
	     (base32
	      "026xd1bkg10fj2q1n6xx797xk1grpby25qj1pnw2lp4f3vc19qn6"))))
   (build-system gnu-build-system)
   (native-inputs
    `(("pkg-config" ,pkg-config)))
   (inputs
    `(("libx11" ,libx11)
      ("libxft" ,libxft)
      ("libxrandr" ,libxrandr)
      ("libxpm" ,libxpm)
      ("uthash" ,uthash)))
   (synopsis "The task switcher for minimalistic WMs")
   (description "")
   (home-page "https://github.com/sagb/alttab")
   (license gpl3+)))

(packages->manifest (list package-alttab))
