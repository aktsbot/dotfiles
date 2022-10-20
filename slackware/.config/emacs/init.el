;;; For performance
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb


(add-hook 'after-init-hook #'(lambda ()
                               ;; restore after startup
                               (setq gc-cons-threshold 800000)))

;; Of course, everything is UTF-8.
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Initialise the emacs packages in case any of them overrides
;; built-in Emacs packages.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs package management
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         )
      gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3"
      )

;; Add ELPA packages to the loadpp path
(let ((default-directory "~/.config/emacs/elpa"))
  (normal-top-level-add-subdirs-to-load-path))

;; Ensure use-package is installed and loaded
(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (package-initialize)
   (package-refresh-contents)
   (package-install 'use-package)
   (require 'use-package)))

;; Set to true to have use-package install all packages mentioned if
;; they're not already installed.
(setq use-package-always-ensure t)


(fido-mode 1)                           ;; better auto completion for files/buffers
(blink-cursor-mode 0)                   ;; disable blinking cursor to prevent mental trauma
(show-paren-mode 1)                     ;; shows matching parens or failure to match
(global-auto-revert-mode 1)             ;; reload files that change on disk
(column-number-mode 1)                  ;; show column numbers in mode line
(global-display-line-numbers-mode)      ;; show line numbers

(setq-default truncate-lines t)         ;; default to NOT wrapping long lines in display
(tool-bar-mode 0)                       ;; hide the tool bar
(menu-bar-mode 0)                       ;; hide the "File Edit..." menu
(scroll-bar-mode -1)                    ;; hide the scroll bars

;; custom themes path
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes")
(load-theme 'default-black t)              ;; a good color scheme

(setq-default frame-title-format '("Emacs - %b")) ;; title of the frame should be the filename

(setq inhibit-startup-screen t)         ;; don't show the "splash" screen
(setq initial-scratch-message           ;; put this text in the scratch buffer
      ";; Scratch that!\n")
;;; Put Emacs auto-save and backup files to /tmp/ or C:/Temp/
(defconst emacs-tmp-dir (expand-file-name (format "emacs%d" (user-uid)) temporary-file-directory))
(setq
   backup-by-copying t                                        ; Avoid symlinks
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t
   auto-save-list-file-prefix emacs-tmp-dir
   auto-save-file-name-transforms `((".*" ,emacs-tmp-dir t))  ; Change autosave dir to tmp
   backup-directory-alist `((".*" . ,emacs-tmp-dir)))

;;; Lockfiles unfortunately cause more pain than benefit
(setq create-lockfiles nil)

;;; buffers as tabs
;; (setq tab-line-close-button-show nil)
;; (setq tab-line-tabs-function 'tab-line-tabs-mode-buffers)
;; (global-tab-line-mode t)
;; (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
;; (add-to-list 'default-frame-alist '(ns-appearance . dark))

;; Built-in project package
;;(require 'project)
;;(global-set-key (kbd "C-x p f") #'project-find-file)

(use-package projectile
	:ensure t
	:bind
	(("C-c p f" . projectile-find-file))
	)

;; user's path gets brought into emacs
(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

;; node_modules folder in projects get added in
(use-package add-node-modules-path
  :ensure t)

;; forgot keys for stuff?
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;; word -> line -> block selection
(use-package expand-region
  :ensure t
  :bind (("C-=" . er/expand-region)
	 ("C--" . er/contract-region)))


;; json-mode
(use-package json-mode
  :ensure t)


;; web-mode
(setq-default tab-width 2)
(setq indent-tabs-mode nil)
(defun akts/webmode-hook ()
	"Webmode hooks."
	(setq web-mode-enable-comment-annotation t)
	(setq web-mode-markup-indent-offset 2)
	(setq web-mode-code-indent-offset 2)
	(setq web-mode-css-indent-offset 2)
	(setq web-mode-attr-indent-offset 0)
	(setq web-mode-enable-auto-indentation t)
	(setq web-mode-enable-auto-closing t)
	(setq web-mode-enable-auto-pairing t)
	(setq web-mode-enable-css-colorization t)
)
(use-package web-mode
  :ensure t
  :mode (("\\.jsx?\\'" . web-mode)
	 ("\\.tsx?\\'" . web-mode)
	 ("\\.html\\'" . web-mode))
  :commands web-mode
	:hook (web-mode . akts/webmode-hook)
)

;; magit
(use-package magit
  :ensure t
  :bind (
	 ("C-x g" . magit-status)))

;; company
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)
(use-package company
  :ensure t
  :config (global-company-mode t))

;; lsp-mode
(setq lsp-log-io nil) ;; Don't log everything = speed
(setq lsp-keymap-prefix "C-c l")
;;(setq lsp-restart 'auto-restart)
(setq lsp-ui-sideline-show-diagnostics t)
(setq lsp-ui-sideline-show-hover t)
(setq lsp-ui-sideline-show-code-actions t)
(setq lsp-diagnostics-provider :flymake)
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-position 'at-point)
(global-set-key (kbd "C-.") #'lsp-ui-peek-find-definitions)

(use-package lsp-mode
  :ensure t
  :hook (
	 (web-mode . lsp-deferred)
	 (lsp-mode . lsp-enable-which-key-integration)
	 )
  :commands lsp-deferred)


(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)


(defun enable-minor-mode (my-pair)
  "Enable minor mode if filename match the regexp.  MY-PAIR is a cons cell (regexp . minor-mode)."
  (if (buffer-file-name)
      (if (string-match (car my-pair) buffer-file-name)
	  (funcall (cdr my-pair)))))

(use-package prettier-js
  :ensure t)
(add-hook 'web-mode-hook #'(lambda ()
                             (enable-minor-mode
                              '("\\.jsx?\\'" . prettier-js-mode))
			     (enable-minor-mode
            '("\\.tsx?\\'" . prettier-js-mode))))

(eval-after-load 'web-mode
  '(progn
     (add-hook 'web-mode-hook #'add-node-modules-path)
     (add-hook 'web-mode-hook #'prettier-js-mode)))


(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(use-package npm-mode
  :ensure t
  :config
  (npm-global-mode))

;; Custom functions
(defun akts/kill-buffer ()
  "Kill the active buffer."
  (interactive)
  (kill-buffer (current-buffer)))

(global-set-key (kbd "C-x K") 'akts/kill-buffer)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
	 '(projectile magit company web-mode json-mode expand-region which-key add-node-modules-path exec-path-from-shell use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-code-face ((t nil))))
