;; Twilight Colour Theme for Emacs.
;;
;; Defines a colour scheme resembling that of the original TextMate Idle Fingers colour theme.
;; To use add the following to your .emacs file (requires the color-theme package):
;;
;; (require 'color-theme)
;; (color-theme-initialize)
;; (load-file "~/.emacs.d/color-theme-idle-fingers.el")
;;
;; And then (color-theme-idle-fingers) to activate it.
;;
;; MIT License Copyright (c) 2010 Yves Senn <yves.senn@gmx.ch>
;; Credits due to the excellent TextMate Idle Fingers theme
;;

(defvar idle-fingers-fg "#FFFFFF")

(defvar idle-fingers-bg-1 "#2b2b2b")
(defvar idle-fingers-bg "#323232")
(defvar idle-fingers-selection "#5A647EE0")
(defvar idle-fingers-cursor "#91FF00")
(defvar idle-fingers-line-highlight "#353637")

(defvar idle-fingers-dark-orange "#BC9458")
(defvar idle-fingers-orange "#CC7833")
(defvar idle-fingers-yellow "#FFF980")
(defvar idle-fingers-green "#A5C261")
(defvar idle-fingers-dark-blue "#8DAFB4")
(defvar idle-fingers-light-blue "#B7DFF8")
(defvar idle-fingers-red "#CD908B")

(defun color-theme-idle-fingers ()
  "Color theme by Yves Senn, based off the TextMate Idle Fingers theme, created 2010-04-04"
  (interactive)
  (color-theme-install
   (list `((background-color . ,idle-fingers-bg)
           (background-mode . dark)
           (border-color . "black")
           (cursor-color . ,idle-fingers-cursor)
           (foreground-color . ,idle-fingers-fg)
           (mouse-color . "sienna1"))
         `()
         '(border-glyph ((t (nil))))

         `(idle-fingers-comment ((t (:italic t :foreground ,idle-fingers-dark-orange))))
         `(idle-fingers-keyword ((t (:foreground ,idle-fingers-orange))))
         `(idle-fingers-function-name ((t (:foreground ,idle-fingers-yellow))))
         `(idle-fingers-constant ((t (:foreground ,idle-fingers-dark-blue))))
         `(idle-fingers-variable ((t (:foreground ,idle-fingers-light-blue))))
         `(idle-fingers-string ((t (:foreground ,idle-fingers-green))))
         `(idle-fingers-preprocesor ((t (:foreground "#D0D0FF"))))

         '(font-lock-keyword-face ((t (:inherit idle-fingers-keyword))))
         '(font-lock-function-name-face ((t (:inherit idle-fingers-function-name))))
         '(font-lock-comment-face ((t (:inherit idle-fingers-comment))))
         '(font-lock-comment-delimiter ((t (:inherit idle-fingers-comment))))
         '(font-lock-doc-face ((t (:inherit idle-fingers-comment))))
         '(font-lock-doc-string-face ((t (:inherit idle-fingers-comment))))
         '(font-lock-constant-face ((t (:inherit idle-fingers-constant))))
         '(font-lock-string-face ((t (:inherit idle-fingers-string))))
         '(font-lock-variable-name-face ((t (:inherit idle-fingers-varibale))))

         `(region ((t (:background ,idle-fingers-selection))))
         ;; (buffers-tab ((t (:background "black" :foreground "white"))))

         ;; (light-background ((t (:background "#181818"))))
         ;; (dark-background ((t (:background "#080808"))))
         ;; (preprocessor ((t (:foreground "Aquamarine"))))
         ;; (highlighted ((t (:background "#606060"))))
         ;; (important-region ((t (:background "#000000"))))
         ;; (flashy-highlight ((t (:background "#6C6A41"))))
         ;; (default ((t (:foreground "#F8F8F8"))))
         ;; (variable ((t (:foreground "#7587A6"))))
         ;; (constant ((t (:foreground "#CF6A4C"))))
         ;; (type ((t (:foreground "#9B703F"))))
         ;; (keyword ((t (:foreground "#CDA869"))))
         ;; (string ((t (:foreground "#8F9D6A"))))
         ;; (comment ((t (:italic t :foreground "#5F5A60"))))
         ;; (doc ((t (:foreground "#9B859D"))))
         ;; (function-def ((t (:inherit default))))
         ;; (code-error ((t (:underline t :inherit diff-removed))))
         ;; (code-warning ((t (:underline t :inherit diff-changed))))

         ;; (paren-face ((t (:inherit default))))
         ;; (esk-paren-face ((t (:inerhit default))))

         ;; (font-lock-builtin-face ((t (:inhert default))))
         ;; (font-lock-comment-face ((t (:inherit comment))))
         ;; (font-lock-constant-face ((t (:inherit constant))))
         ;; (font-lock-doc-face ((t (:inherit string))))
         ;; (font-lock-doc-string-face ((t (:inherit doc))))
         ;; (font-lock-function-name-face ((t (:inherit function-def))))
         ;; (font-lock-keyword-face ((t (:inherit keyword))))
         ;; (font-lock-preprocessor-face ((t (:inherit preprocessor))))
         ;; (font-lock-reference-face ((t (:inherit variable))))

         ;; (font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
         ;; (font-lock-regexp-grouping-construct ((t (:foreground "red"))))

         ;; (font-lock-string-face ((t (:inherit string))))
         ;; (font-lock-type-face ((t (:inherit type))))
         ;; (font-lock-variable-name-face ((t (:inherit variable))))
         ;; (font-lock-warning-face ((t (:bold t :foreground "Pink"))))

         ;; (jde-java-font-lock-doc-tag-face ((t (:inherit doc :bold t))))
         ;; (jde-java-font-lock-constant-face ((t (:inherit constant))))
         ;; (jde-java-font-lock-link-face ((t (:underline t :foreground "dark-blue"))))
         ;; (jde-java-font-lock-modifier-face ((t (:inherit keyword))))
         ;; (jde-java-font-lock-package-face ((t (:inherit keyword))))
         ;; (jde-java-font-lock-number-face ((t (:inherit string))))
         ;; (jde-java-font-lock-code-face ((t (:inherit default))))
         ;; (jde-db-spec-breakpoint-face ((t (:inherit diff-header))))
         ;; (jde-db-requested-breakpoint-face ((t (:inherit diff-changed))))
         ;; (jde-db-active-breakpoint-face ((t (:inherit diff-added))))

         ;; (ecb-default-highlight-face ((t (:inherit highlighted))))

         ;; (log4j-font-lock-info-face ((t (:inherit variable))))
         ;; (log4j-font-lock-error-face ((t (:inherit constant))))
         ;; (log4j-font-lock-warn-face ((t (:inherit keyword))))

         ;; (diff-header ((t (:inherit default :background "#0E2231"))))
         ;; (diff-added ((t (:inherit default :background "#253B22"))))
         ;; (diff-removed ((t (:inherit default :background "#420E09"))))
         ;; (diff-changed ((t (:inherit default :background "#4A410D"))))
         ;; (diff-context ((t (:inherit font-lock-comment))))
         ;; (diff-index ((t (:inherit font-lock-comment))))
         ;; (diff-file-header ((t (:inherit font-lock-comment :bold t))))

         ;; (jde-db-active-breakpoint-face ((t (:inherit diff-removed))))
         ;; (jde-db-requested-breakpoint-face ((t (:inherit diff-changed))))
         ;; (jde-db-spec-breakpoint-face ((t (:inherit diff-added))))

         ;; (flymake-errline ((t (:inherit code-error))))
         ;; (flymake-warnline ((t (:inherit code-warning))))

         ;; (ediff-current-diff-A ((((class color) (min-colors 16)) (:background "#01243C" :foreground "white"))))
         ;; (ediff-current-diff-Ancestor ((((class color) (min-colors 16)) (:background "#4D0600" :foreground "white"))))
         ;; (ediff-current-diff-B ((((class color) (min-colors 16)) (:background "#574A00" :foreground "white"))))
         ;; (ediff-current-diff-C ((((class color) (min-colors 16)) (:background "#5C285C" :foreground "white"))))
         ;; (ediff-even-diff-A ((((class color) (min-colors 16)) (:background "#222222"))))
         ;; (ediff-even-diff-Ancestor ((((class color) (min-colors 16)) (:background "#222222"))))
         ;; (ediff-even-diff-B ((((class color) (min-colors 16)) (:background "#222222"))))
         ;; (ediff-even-diff-C ((((class color) (min-colors 16)) (:background "#222222"))))
         ;; (ediff-fine-diff-A ((((class color) (min-colors 16)) (:background "#0B5C00" :foreground "white"))))
         ;; (ediff-fine-diff-Ancestor ((((class color) (min-colors 16)) (:background "#0B5C00" :foreground "white"))))
         ;; (ediff-fine-diff-B ((((class color) (min-colors 16)) (:background "#0B5C00" :foreground "white"))))
         ;; (ediff-fine-diff-C ((((class color) (min-colors 16)) (:background "#0B5C00" :foreground "white"))))
         ;; (ediff-odd-diff-A ((((class color) (min-colors 16)) (:background "#222222"))))
         ;; (ediff-odd-diff-Ancestor ((((class color) (min-colors 16)) (:background "#222222"))))
         ;; (ediff-odd-diff-B ((((class color) (min-colors 16)) (:background "#222222"))))

         ;; (js2-error-face ((t (:inherit code-error))))
         ;; (js2-external-variable-face ((t (:foreground))))
         ;; (js2-function-param-face ((t (:inherit variable))))
         ;; (js2-instance-member-face ((t (:inherit variable))))
         ;; (js2-private-function-call-face ((t (:inherit default))))
         ;; (js2-private-member-face ((t (:inherit variable))))
         ;; (js2-warning-face ((t (:inherit code-warning))))
         ;; ;;                                         (js2-jsdoc-html-tag-delimiter-face
         ;; ;;                                         (js2-jsdoc-html-tag-name-face
         ;; ;;                                         (js2-jsdoc-tag-face
         ;; ;;                                         (js2-jsdoc-type-face
         ;; ;;                                         (js2-jsdoc-value-face

         ;; (html-tag-face ((t (:inherit keyword))))

         ;; (mumamo-background-chunk-major ((t (:inherit background-color))))
         ;; (mumamo-background-chunk-submode ((t (:inherit background-color))))
         ;; (mumamo-background-chunk-submode1 ((t (:inherit light-background))))
         ;; (nxml-delimited-data-face ((t (:inherit string))))
         ;; (nxml-name-face ((t (:inherit variable))))
         ;; (nxml-ref-face ((t (:inherit constant))))
         ;; (nxml-delimiter-face ((t (:inherit keyword))))
         ;; (nxml-tag-delimiter-face ((t (:inherit default))))
         ;; (nxml-tag-delimiter ((t (:inherit default))))
         ;; (nxml-tag-slash-face ((t (:inherit keyword))))
         ;; (nxml-text-face ((t (:inherit default))))
         ;; (nxml-attribute-local-name-face ((t (:inherit variable))))
         ;; (nxml-attribute-value-face ((t (:inherit string))))
         ;; (nxml-attribute-value-delimiter-face ((t (:inherit string))))
         ;; (nxml-comment-content-face ((t (:inherit comment))))
         ;; (nxml-comment-delimiter-face ((t (:inherit comment))))
         ;; (nxml-processing-instruction-delimiter-face ((t (:inherit preprocessor))))
         ;; (nxml-cdata-section-CDATA-face ((t (:inherit constant))))
         ;; (nxml-cdata-section-delimiter-face ((t (:inherit keyword))))
         ;; (nxml-element-local-name-face ((t (:inherit keyword))))
         ;; (nxml-element-local-name ((t (:inherit keyword))))


         ;; (sgml-namespace ((t (:inherit type))))
         ;; (css-selector ((t (:inherit keyword))))

         ;; (yas/mirror-highlight-face ((t (:background "#4E404F"))))
         ;; (yas/field-highlight-face ((t (:background "#2E2E2E"))))

         ;; (org-done ((t (:inherit string :bold t))))
         ;; (org-todo ((t (:inherit constant :bold t))))
         ;; (org-level-1 ((t (:inherit default :underline t :bold t))))
         ;; (org-level-2 ((t (:inherit variable))))
         ;; (org-level-3 ((t (:inherit keyword))))
         ;; (org-level-4 ((t (:inherit type))))
         ;; (org-special-keyword ((t (:inherit doc))))

         ;; (newsticker-treeview-selection-face ((t (:inherit highlighted))))
         ;; (newsticker-treeview-face ((t (:inherit default))))
         ;; (newsticker-treeview-immortal-face ((t (:inherit keyword))))

         ;; (ido-only-match ((t (:inherit string))))
         ;; (ido-subdir ((t (:inherit constant))))

         ;; (mac-ts-caret-position ((t (:inherit dark-background))))

         ;; (erb-comment-face ((t (:inherit comment))))
         ;; (erb-comment-delim-face ((t (:inherit comment))))
         ;; (erb-exec-face ((t (:inherit important-region))))
         ;; (erb-exec-delim-face ((t (:inherit preprocessor))))
         ;; (erb-out-face ((t (:inherit important-region))))
         ;; (erb-out-delim-face ((t (:inherit preprocessor))))

         ;; (gui-element ((t (:background "#D4D0C8" :foreground "black"))))
         ;; (region ((t (:background "#333333"))))
         ;; (minibuffer-prompt ((t (:background "#141414" :foreground "cyan"))))
         ;; (minibuffer-noticeable-prompt ((t (:inherit minibuffer-prompt))))
         ;; (mode-line ((t (:background "#CCCCCC" :foreground "black"))))
         ;; (highlight ((t (:inherit highlighted))))
         ;; (hl-line ((t (:inherit dark-background))))
         ;; (left-margin ((t (nil))))
         ;; (text-cursor ((t (:background "yellow" :foreground "black"))))
         ;; (toolbar ((t (nil))))
         )))