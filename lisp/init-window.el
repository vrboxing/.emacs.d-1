(use-package winum
  :config
  (progn
    (setq winum-auto-assign-0-to-minibuffer nil
	    winum-auto-setup-mode-line nil
	    winum-ignored-buffers '(" *which-key*"))
    (evil-leader/set-key
      "1" 'select-window-1
      "2" 'select-window-2
      "3" 'select-window-3
      "4" 'select-window-4
      "5" 'select-window-5)
    (define-key winum-keymap (kbd "M-1") 'winum-select-window-1)
    (define-key winum-keymap (kbd "M-2") 'winum-select-window-2)
    (define-key winum-keymap (kbd "M-3") 'winum-select-window-3)
    (define-key winum-keymap (kbd "M-4") 'winum-select-window-4)
    (define-key winum-keymap (kbd "M-5") 'winum-select-window-5)
    (winum-mode)))

(provide 'init-window)