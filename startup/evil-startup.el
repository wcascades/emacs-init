;;; evil-startup.el --- Init for evil

;;; Code:
(use-package evil
  :ensure t
  :config (evil-mode))

(use-package evil-smartparens
  :ensure t
  :config (add-hook 'smarparens-enabled-hook #'evil-smartparens-mode))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(provide 'evil-startup)
;;; evil-startup.el ends here
