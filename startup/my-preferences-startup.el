;;; my-preferences-startup.el --- Various settings.
;;; Commentary:
;; TODO: smartparens-mode not functioning.
;;; Code:
(menu-bar-mode 0)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(show-paren-mode 1)
(desktop-save-mode 1)
(global-linum-mode t)
;(smartparens-global-mode 1)

;;Loading dracula, then subsequently disableing
;;it fixes the issues of it inadvertly
;;hanging around
(use-package dracula-theme
  :ensure t
  :init (if (display-graphic-p)
	    (load-theme 'dracula)
	  (progn (load-theme 'dracula)
		 (disable-theme 'dracula))))

(defun transparency (value)
  "Set the transparency of the frame window.  VALUE 0=transparent/100=opaque."
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))

(provide 'my-preferences-startup.el)
;;; my-preferences-startup.el ends here
