;; File Mappings
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . css-mode))

;; Hooks

(defun default-css-mode-hook ()
  (set-pairs '("(" "[" "\"" "\'"))
  ;; (setq ac-sources '(ac-source-dictionary))
  (setq css-indent-level 2)
  (setq css-indent-offset 2))

(add-hook 'css-mode-hook 'default-css-mode-hook)
