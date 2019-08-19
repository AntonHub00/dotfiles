(package-initialize)

;; Packages repository

;; Stable repository
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Not stable repository
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; Load the org config file
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

;; Deactivate foreground and background

;; '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil
;; :strike-through nil :overline nil :underline nil :slant normal :weight
;; normal :height 113 :width normal :foundry "CTDB" :family "Fira
;; Code"))))


;; Auto things
