;; File Mappings
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; Configuration
(setq org-agenda-files (directory-files "/Users/jone/idisk/notes/org/" t "^[^.].*")
      org-log-done t
      org-clock-persist t
      org-clock-out-when-done nil
      org-agenda-clockreport-parameter-plist '(:link nil :maxlevel 4 :emphasize t))

(org-clock-persistence-insinuate)

;; Extensions
(eval-after-load 'org
  '(progn
     (define-key org-mode-map (kbd "C-c a") 'org-agenda)
     (define-key org-mode-map (kbd "C-c t u") 'org-clock-update-time-maybe)
     (define-key org-mode-map (kbd "C-c t g") 'org-clock-goto)))

;; Hooks
(defun default-org-mode-hook ()
  (set-pairs '("(" "{" "[" "\""))
  (auto-fill-mode 1))

(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)    ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)
(add-hook 'org-mode-hook 'default-org-mode-hook)
