;;; python-startup.el --- Init for python
;;; Commentary:
;;  Init for elpy.
;;; TODO: Need to change default mode for python shell (it's evil-mode)
;;; Code:
(use-package elpy
  :ensure t
  :commands elpy-enable
  :init (with-eval-after-load 'python (elpy-enable))
  (setq python-shell-interpreter "/usr/bin/python3"))

(provide 'python-startup)
;;; python-startup.el ends here
