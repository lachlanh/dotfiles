;; Turn off the menu bar
(menu-bar-mode -1)
;; Turn off the toolbar
(tool-bar-mode -1)

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(global-linum-mode)

(setq
 x-select-enable-clipboard t
 x-select-enable-primary t
 save-interprogram-paste-before-kill t
 mouse-yank-at-point t)

(blink-cursor-mode 0)
(setq ring-bell-function 'ignore)

;; setup the mouse for tmux
(xterm-mouse-mode 1)

(load-theme 'wombat t)

;; increase font size for better readability
;; (set-face-attribute 'default nil :height 140)

;;switch off startup message
 (setq inhibit-startup-message t)
