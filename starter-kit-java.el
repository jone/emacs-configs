(defvar *jde-eclipse-flymake-mode* nil)
(setq defer-loading-jde t)

(if defer-loading-jde
    (progn
      (autoload 'jde-mode "jde" "JDE mode." t)
      (setq auto-mode-alist
            (append
             '(("\\.java\\'" . jde-mode) ("\\.jsp\\'" . html-mode))
             auto-mode-alist)))
  (require 'jde))

(add-to-list 'load-path (expand-file-name (concat dotfiles-dir "/vendor/jde/lisp")))
(add-to-list 'load-path (expand-file-name (concat dotfiles-dir "/vendor/cedet/common")))
(load-file (expand-file-name (concat dotfiles-dir "/vendor/cedet/common/cedet.el")))
(add-to-list 'load-path (expand-file-name (concat dotfiles-dir "/vendor/elib")))

(add-hook 'java-mode-hook
          '(lambda()
             (vendor 'ecb) ; Require the Emacs-Code-Browser
             (vendor 'decompile) ; Require major-mode for java class files
             
             (linum-mode 1) ;activate linum-mode for java-files
                          ;; Generate getter and setter methods to variables.
             (define-key jde-mode-map (kbd "C-c C-v w") 'jde-wiz-get-set-methods)

             ;; Generate variables and getter and setter methods to them.
             (define-key jde-mode-map (kbd "C-c C-v g") 'jde-gen-get-set-methods)
             
             ;; Fix imports.
             (define-key jde-mode-map (kbd "C-c o")
               (lambda ()
                 (interactive)
                 (save-excursion
                   (jde-import-all)
                   (jde-import-organize)
                   (jde-import-kill-extra-imports))))
             
             (setq c-basic-offset 2)))

(add-hook 'jde-mode-hook
          '(lambda()

             (setq jde-complete-insert-method-signature nil)

             ;; Indent width is two spaces.
             (setq c-comment-continuation-stars "* ")
             
             ;; No "final" when auto creating methods and variables.
             (setq jde-gen-final-arguments nil)
             (setq jde-gen-final-methods nil)

             ;; Don't use JDE's builtin abbrevs.
             (setq jde-enable-abbrev-mode nil)))

(defun jde-complete-ido ()
  "Custom method completion for JDE using ido-mode and yasnippet."
  (interactive)
  (let ((completion-list '()))
    (dolist (element (jde-complete-find-completion-for-pair (jde-complete-get-pair (jde-parse-java-variable-at-point) nil) nil))
      (add-to-list 'completion-list (cdr element)))
    (if completion-list
        (let ((choise (ido-completing-read "> " completion-list)) (method))
          (unless (string-match "^.*()$" choise)
            (setq method (replace-regexp-in-string ")" "})"(replace-regexp-in-string ", " "}, ${" (replace-regexp-in-string "(" "(${" choise)))))
          (delete-region (point) (re-search-backward "\\." (line-beginning-position)))
          (insert ".")
          (if method
              (yas/expand-snippet (point) (point) method)
            (insert choise)))
      (message "No completions at this point"))))

(setq jde-complete-function 'jde-complete-ido)

(defun jde-eclipse-flymake-mode ()
  (interactive)
  (setq *jde-eclipse-flymake-mode* (not *jde-eclipse-flymake-mode*))
  (if (file-exists-p (concat dotfiles-dir "vendor/jde-eclipse-compiler-server.el"))
      (progn
        (load (concat dotfiles-dir "vendor/jde-eclipse-compiler-server"))
        (setq jde-compiler `(("eclipse java compiler server" ,(concat dotfiles-dir "bin/ecj-3.4.1.jar"))))
        (setq flymake-allowed-file-name-masks (quote (("\\.java\\'" jde-ecj-server-flymake-init jde-ecj-flymake-cleanup))))
        (let ((flymake-hook '(lambda ()
                               (flymake-mode 1)
                               )))
          (if *jde-eclipse-flymake-mode*
              (progn
                (add-hook 'jde-mode-hook flymake-hook)
                (flymake-mode 1)
                (message "Eclipse-Flymake-Mode activated"))
            (progn
              (remove-hook 'jde-mode-hook flymake-hook)
              (flymake-mode 0)
              (message "Eclipse-Flymake-Mode deactivated")))))))


(provide 'starter-kit-java)