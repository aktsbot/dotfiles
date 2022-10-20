(deftheme default-black
  "Theme from emacsrocks - modified")

;; refer
;; https://github.com/owainlewis/emacs-color-themes/blob/master/themes/brin-theme.el
;; https://www.ditig.com/256-colors-cheat-sheet

(custom-theme-set-faces
 'default-black
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#acacac" :inverse-video nil :box nil :strike-t*hrough nil :overline nil :underline nil :slant normal :weight normal :width normal))))
 '(highlight ((((class color) (min-colors 88) (background dark)) (:background "#111111"))))
 '(region ((nil (:background "#464740"))))
 '(hl-line ((nil (:background "#222222"))))
 '(yas-field-highlight-face ((nil (:background "#333399"))))
 '(js2-function-param-face ((t (:foreground "LightGoldenrod"))))

 '(line-number ((t (:foreground "#626262" :background "#121212")))) 
 
 '(font-lock-warning-face ((nil (:foreground "#ff6666"))))
 '(font-lock-comment-face ((t (:foreground "DarkCyan"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "DarkCyan"))))
 '(font-lock-variable-name-face ((t (:foreground "#acacac"))))
 '(font-lock-string-face ((t (:foreground "#af5f00"))))
 '(font-lock-doc-string-face ((t (:foreground "#af5f00"))))
 '(font-lock-constant-face ((t (:foreground "#af5f00"))))
 '(font-lock-keyword-face ((t (:foreground "#998221"))))
 '(font-lock-function-name-face ((t (:foreground "#247d7f"))))
 '(font-lock-type-face ((t (:foreground "#507f24"))))
 '(font-lock-builtin-face ((t (:foreground "#68526c"))))

 '(mode-line-inactive ((t (:foreground "#a0a0a0", :background "#2a2c2d"))))
 '(mode-line ((t :foreground "#c0c0c0" :background "#2a2c2d")))
 '(show-paren-match ((nil (:background "#333399"))))
 '(show-paren-mismatch ((((class color)) (:background "red")))))

(provide-theme 'default-black)
