;; Rebuilt emacs config
;;
;; aims :
;;  lightweight, modular - different language configs that are switchable, understood packages

(load "~/.emacs.d/packages")
(load "~/.emacs.d/ui")
(load "~/.emacs.d/navigation")
(load "~/.emacs.d/editing")
(load "~/.emacs.d/programming")

;; (add-to-list 'load-path "~/.emacs.d/better-defaults")
;; (require 'better-defaults)

;; org
(transient-mark-mode 1)
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit ivy helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
