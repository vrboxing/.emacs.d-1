(use-package neotree
  :init
  (progn
    (setq-default neo-window-width 32
		  neo-create-file-auto-open t
		  neo-banner-message "Press ? for neotree help"
		  neo-show-updir-line nil
		  neo-mode-line-type 'neotree
		  neo-smart-open t
		  neo-show-hidden-files t
		  neo-auto-indent-point t
		  neo-modern-sidebar t
		  neo-vc-integration nil)
    (setq neo-default-system-application "open")
    (setq neo-theme 'icons)
    (evil-leader/set-key
      "ft" 'neotree-toggle
      "fT" 'neotree-show
      "pt" 'neotree-find-project-root)))

(provide 'init-filetree)