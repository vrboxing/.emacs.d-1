;;; init-ivy.el --- ivy configuration
;;
;; Copyright (c) 2018 Chunhui Ren
;;
;; Author  : Chunhui Ren <renchunhui2008@gmail.com>
;; URL     : https://github.com/RenChunhui/.emacs.d
;; Version : 1.0.0
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;;; Code:

(use-package ivy
  :config
  (progn
    (setq ivy-height 12
	  ivy-wrap t
	  ivy-fixed-height-minibuffer t
	  projectile-completion-system 'ivy)
    (add-hook 'after-init-hook 'ivy-mode)))

(use-package counsel
  :init
  (progn
    (evil-leader/set-key
      "ff" 'counsel-find-file
      "fel" 'counsel-find-library
      "fL" 'counsel-locate)
    (add-hook 'after-init-hook 'counsel-mode))
  :config
  (progn
    (define-key counsel-find-file-map (kbd "C-h") 'counsel-up-directory)))

(use-package counsel-projectile
  :init
  (progn
    (evil-leader/set-key
      "bf" 'indent-buffer
      "pf" 'counsel-projectile-find-file
      "pb" 'counsel-projectile-switch-to-buffer
      "pd" 'counsel-projectile-find-dir
      "pp" 'counsel-projectile-switch-project)))

(use-package swiper
  :init
  (progn
    (evil-leader/set-key
      "ss" 'swiper)))

(provide 'init-ivy)

;;; init-ivy.el ends here
