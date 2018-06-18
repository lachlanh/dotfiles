(load "go-guru.el")
(defun my-go-mode-hook ()
  (setq tab-width 2 indent-tabs-mode 1)
  (add-hook 'before-save-hook 'gofmt-before-save) ; gofmt before every save
  (setq gofmt-command "goimports")

  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v"))
                                        ; Godef jump key binding                                                      
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-p") 'compile)
  (local-set-key (kbd "M-P") 'recompile)
;  (local-set-key (kbd "M-]") 'next-error)
;  (local-set-key (kbd "M-[") 'previous-error)

  )

(add-hook 'go-mode-hook 'my-go-mode-hook)
(add-hook 'go-mode-hook 'go-eldoc-setup)

;; flycheck syntax checker
(flycheck-gometalinter-setup)
(setq flycheck-gometalinter-fast t)
(setq flycheck-gometalinter-test t)
(add-hook 'go-mode-hook 'flycheck-mode)
;(add-hook 'go-mode-hook 'enable-paredit-mode)
;(add-hook 'go-mode-hook 'smartparens-mode)
;(add-hook 'go-mode-hook 'gorepl-mode)
(add-hook 'go-mode-hook 'go-guru-hl-identifier-mode)

;; (with-eval-after-load 'go-mode
;;   (require 'go-autocomplete))
;; try company for autocomplete
(add-hook 'go-mode-hook (lambda ()
                          (company-mode)
                          (set (make-local-variable 'company-backends) '(company-go))))



;(go-guru-hl-identifier-mode)

(add-hook 'projectile-after-switch-project-hook 'go-set-project)

;;(add-to-list 'load-path (concat (getenv "GOPATH")  "/src/github.com/golang/lint/misc/emacs"))
;;(require 'golint)
;;(require 'go-dlv)

