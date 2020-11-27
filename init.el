;;; init.el --- Init for emacs
;;; Commentary:
;;  Emacs startup file --- A startup configuration for Emacs.
;;  Author: Zach Wiebesiek
;;; Code:
(require 'package)
(add-to-list
 'package-archives
 '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-to-list 'load-path "~/.emacs.d/startup/")
(load "which-key-startup")
(load "evil-startup")
(load "helm-startup")
(load "flycheck-startup")
(load "python-startup")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b46ee2c193e350d07529fcd50948ca54ad3b38446dcbd9b28d0378792db5c088" default)))
 '(package-selected-packages (quote (dracula-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load "my-preferences-startup")
;;; init.el ends here
