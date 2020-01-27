;; go related config
(defvar go-packages
  '(
    go-mode
    company-go
    smartparens
    ))

(load-packages go-packages)

(defun my-go-mode-hook ()
  ;; paredit gets in the way
  (disable-paredit-mode)
  (setq tab-width 2 indent-tabs-mode 1)
  (add-hook 'before-save-hook 'gofmt-before-save)
  (setq gofmt-command "goimports")
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-p") 'compile)
  (local-set-key (kbd "M-P") 'recompile)

  (require 'smartparens-config)
  (smartparens-mode)
  
  )

(add-hook 'go-mode-hook 'my-go-mode-hook)
;; set the path
;; add the company backends
(add-hook 'go-mode-hook (lambda ()
                          (company-mode)
                          (set (make-local-variable 'company-backends) '(company-go))))
