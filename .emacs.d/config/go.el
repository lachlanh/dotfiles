;; go related config
(defvar go-packages
  '(
    go-mode
    company-go
    ))

(load-packages go-packages)

;; set the path
;; add the company backends
(add-hook 'go-mode-hook (lambda ()
                          (company-mode)
                          (set (make-local-variable 'company-backends) '(company-go))))
