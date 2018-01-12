;;; start emacs server

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(package-initialize)
(package-initialize)                ;; Initialize & Install Package

(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(setq org-attach-directory "~/.org-data/")

(server-start)

;;; show matching brace
(show-paren-mode 1)

;;; pdf mode is standard mode
(setq TeX-PDF-mode t)

;;; open buffer in foreground
(x-focus-frame nil)

;; disable autosave
(setq auto-save-default nil)

;; disable backup files
(setq make-backup-files nil)

;; open log files in less -F mode
(add-to-list 'auto-mode-alist '("\\.log\\'" . auto-revert-mode))


(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))
;; GPG key to use for encryption
;; Either the Key ID or set to nil to use symmetric encryption.
(setq org-crypt-key "5E9435C0")

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-html-doctype "html5")

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (adwaita)))
 '(package-selected-packages
   (quote
    (org-plus-contrib deft ## js2-mode solarized-theme markdown-mode magit haskell-mode auctex)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; disable tool bar
(tool-bar-mode -1)

;; suspend "C-z" for graphical displays
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z") 'my-suspend-frame)

(defun my-suspend-frame ()
  "In a GUI environment, do nothing; otherwise `suspend-frame'."
  (interactive)
  (if (display-graphic-p)
      (message "suspend-frame disabled for graphical displays.")
    (suspend-frame)))

;; switch between english and german
(defun fd-switch-dictionary()
  (interactive)
  (let* ((dic ispell-current-dictionary)
    	 (change (if (string= dic "deutsch8") "english" "deutsch8")))
    (ispell-change-dictionary change)
    (message "Dictionary switched from %s to %s" dic change)
    ))

;; shortcuts
(global-set-key (kbd "<f8>") 'fd-switch-dictionary)

;; start flyspell-mode
(global-set-key (kbd "<f9>") 'flyspell-mode)
