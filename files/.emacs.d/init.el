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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (smart-hungry-delete disable-mouse powerline rainbow-delimiters gotham-theme zenburn-theme cyberpunk-theme darktooth-theme moe-theme shell-pop sudo-edit rainbow-mode smartparens zoom undo-tree buffer-move markdown-mode dired-subtree fill-column-indicator auto-complete emmet-mode web-mode expand-region beacon counsel ace-window org-bullets which-key try use-package)))
 '(zoom-size (quote (81 . 0.75))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((type graphic)) :foreground "#99d1ce" :background "#0c1014") (((type tty)) :foreground "white" :background "black")))
 '(rainbow-delimiters-depth-1-face ((t (:inherit default))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit default))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit default))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit default))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit default))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit default))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit default))))
 '(rainbow-delimiters-depth-8-face ((t (:inherit default))))
 '(rainbow-delimiters-depth-9-face ((t (:inherit default)))))
