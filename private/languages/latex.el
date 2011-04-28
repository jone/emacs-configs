;; LaTeX

(defun jone-latex-build (&optional nonstop)
  (interactive)
  (let* ((file (tex-main-file))
         (command (concat "pdflatex " (if nonstop "\\\\nonstopmode" "") "\\\\input " file)))
    (if (tex-shell-running)
        (tex-kill-job)
      (tex-start-shell))
    (tex-send-tex-command command default-directory)))

(defun jone-latex-build-nonstop ()
  (interactive)
  (jone-latex-build 1))

(defun jone-latex-open-pdf ()
  (interactive)
  (let* ((basename (file-name-sans-extension (tex-main-file)))
         (path (concat default-directory basename ".pdf"))
         (command (concat "open " path)))
    (shell-command command)))

(defun jone-latex-cleanup ()
  (interactive)
  (let ((basename (file-name-sans-extension (tex-main-file))))
    (mapcar (lambda (x) (shell-command (concat "rm " basename x)))
            (list ".aux" ".lof" ".log" ".lot" ".pdf" ".toc")))
  (message "Deleted temp files and pdf"))

(defun jone-default-latex-mode-hook ()
  (local-set-key (kbd "C-c 1") 'jone-latex-build)
  (local-set-key (kbd "C-c C-1") 'jone-latex-build-nonstop)
  (local-set-key (kbd "C-c 2") 'jone-latex-open-pdf)
  (local-set-key (kbd "C-c 3") 'jone-latex-cleanup))

(add-hook 'latex-mode-hook 'jone-default-latex-mode-hook)

;; Flymake mode for LaTeX
;; it is not enabled by default, but it is ready to go.
(defun flymake-get-tex-args (file-name)
  (list "chktex" (list "-q" "-v0" file-name)))

;; (add-hook 'latex-mode-hook
;;           '(lambda ()
;;              (set-pairs '("(" "{" "[" "\"" "\'"))
;;              (auto-fill-mode 1)
;;              (flymake-mode t)))
