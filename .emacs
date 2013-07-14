(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-window-sizes (quote (("right1" (0.35638297872340424 . 0.2857142857142857) (0.35638297872340424 . 0.34285714285714286) (0.35638297872340424 . 0.35714285714285715)))))
 '(ecb-options-version "2.40")
 '(isar-display:show-brackets t)
 '(isar-display:show-types nil)
 '(isar-tracing:trace-rules t)
 '(isar-x-symbol-enable t)
 '(load-home-init-file t t)
 '(proof-three-window-enable t)
 '(show-paren-mode t)
 '(speedbar-frame-parameters (quote ((minibuffer) (width . 20) (border-width . 0) (menu-bar-lines . 0) (tool-bar-lines . 0) (unsplittable . t) (set-background-color "black"))))
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(background "blue")
 '(font-lock-builtin-face ((((class color) (background dark)) (:foreground "Turquoise"))))
 '(font-lock-comment-face ((t (:foreground "MediumAquamarine"))))
 '(font-lock-constant-face ((((class color) (background dark)) (:bold t :foreground "DarkOrchid"))))
 '(font-lock-doc-string-face ((t (:foreground "green2"))))
 '(font-lock-function-name-face ((t (:foreground "SkyBlue"))))
 '(font-lock-keyword-face ((t (:bold t :foreground "CornflowerBlue"))))
 '(font-lock-preprocessor-face ((t (:italic nil :foreground "CornFlowerBlue"))))
 '(font-lock-reference-face ((t (:foreground "DodgerBlue"))))
 '(font-lock-string-face ((t (:foreground "LimeGreen"))))
 '(font-lock-type-face ((t (:foreground "#9290ff"))))
 '(font-lock-variable-name-face ((t (:foreground "PaleGreen"))))
 '(font-lock-warning-face ((((class color) (background dark)) (:foreground "yellow" :background "red"))))
 '(highlight ((t (:background "CornflowerBlue"))))
 '(list-mode-item-selected ((t (:background "gold"))))
 '(makefile-space-face ((t (:background "wheat"))))
 '(mode-line ((t (:background "Navy"))))
 '(paren-match ((t (:background "darkseagreen4"))))
 '(region ((t (:background "DarkSlateBlue"))))
 '(show-paren-match ((t (:foreground "black" :background "wheat"))))
 '(show-paren-mismatch ((((class color)) (:foreground "white" :background "red"))))
 '(speedbar-button-face ((((class color) (background dark)) (:foreground "green4"))))
 '(speedbar-directory-face ((((class color) (background dark)) (:foreground "khaki"))))
 '(speedbar-file-face ((((class color) (background dark)) (:foreground "cyan"))))
 '(speedbar-tag-face ((((class color) (background dark)) (:foreground "Springgreen"))))
 '(vhdl-speedbar-architecture-selected-face ((((class color) (background dark)) (:underline t :foreground "Blue"))))
 '(vhdl-speedbar-entity-face ((((class color) (background dark)) (:foreground "darkGreen"))))
 '(vhdl-speedbar-entity-selected-face ((((class color) (background dark)) (:underline t :foreground "darkGreen"))))
 '(vhdl-speedbar-package-face ((((class color) (background dark)) (:foreground "black"))))
 '(vhdl-speedbar-package-selected-face ((((class color) (background dark)) (:underline t :foreground "black"))))
 '(widget-field ((((class grayscale color) (background light)) (:background "DarkBlue")))))


(add-hook 'c++-mode-hook 'turn-on-font-lock)
(add-hook 'c-mode-hook 'turn-on-font-lock)
(add-hook 'emacs-lisp-mode-hook 'turn-on-font-lock)
(add-hook 'shell-script-mode-hook 'turn-on-font-lock)
(add-hook 'cperl-mode-hook 'turn-on-font-lock)
(add-hook 'python-mode-hook 'turn-on-font-lock)
(add-hook 'html-mode-hook 'turn-on-font-lock)
(add-hook 'LaTeX-mode-hook 'turn-on-font-lock)
(add-hook 'java-mode-hook 'turn-on-font-lock) 
(add-hook 'php-mode-hook 'turn-on-font-lock)
(add-hook 'write-file-hooks 'time-stamp)


 ;; Interactively Do Things (highly recommended, but not strictly required)
 (require 'ido)
 (ido-mode t)
     
 ;; Rinari
 (add-to-list 'load-path "~/emacs-modes/rinari")
 (require 'rinari)

 (add-to-list 'load-path "~/emacs-modes/")
 (require 'haml-mode)

  ;; Nxhtml
  ;;(load "/home/sasan/nxhtml/autostart.el")

 (setq auto-mode-alist (cons '("\\.rake\\'" . ruby-mode) auto-mode-alist))
 (setq auto-mode-alist (cons '("\\.rb.tmpl\\'" . ruby-mode) auto-mode-alist))

;;(load-file "~/emacs-moeds/cedet-1.0/common/cedet.el")
;;(global-ede-mode 1)                      ; Enable the Project management system
;;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;;(global-srecode-minor-mode 1)            ; Enable template insertion menu

(add-to-list 'load-path
                     "~/emacs-modes/ecb/")
(require 'ecb-autoloads)

;;ruby commenting keybinding
(add-hook 'ruby-mode-hook
	  (lambda ()
	    (define-key ruby-mode-map "\C-c#" 'comment-or-uncomment-region)
	    )
	  )

;(setq load-path (cons "~/.emacs.d/rails" load-path))
;(require 'rails)

 (global-font-lock-mode 1)
 (setq font-lock-maximum-decoration t)
 (show-paren-mode 1) 
 (add-hook 'text-mode-hook 'turn-on-auto-fill)
 (delete-selection-mode 1)
 (transient-mark-mode t)
 (setq auto-mode-alist (cons '("\\.java\\'" . java-mode) auto-mode-alist))

     (condition-case ()
        (quietly-read-abbrev-file)
       (file-error nil))
     
     (add-hook 'cc-mode-hook
               (lambda ()
                (setq abbrev-mode t)))
 (setq frame-title-format "%b")
 (setq column-number-mode t)

(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;;Auto refresh of files changed on disk
(global-auto-revert-mode t)

;; Remove splash screen
(setq inhibit-splash-screen t)

(set-background-color "Black")
(set-foreground-color "seashell4")
(set-cursor-color     "yellow")

(setq user-full-name "Sasan Padidar")
(setq user-mail-address "sp@sasanpadidar.com")

(autoload 'ruby-mode "ruby-mode"
 "Mode for editing ruby source files")
(setq auto-mode-alist
   (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
            interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby"
 "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
 "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
   '(lambda ()
    (inf-ruby-keys)
))



(put 'downcase-region 'disabled nil)
