(defvar elpa-packages (list 'idle-highlight
                            'yasnippet-bundle
                            'ruby-mode
                            'ruby-electric
                            'inf-ruby
                            'css-mode
                            'yaml-mode
                            'magit
                            'gist
                            'ruby-compilation
                            'rinari
                            'yari
                            'haml-mode
                            'sass-mode
                            'highlight-80+
                            'diff-git
                            'full-ack)
  "Libraries that should be installed by default.")

(defun senny-elpa-install ()
  "Install all packages that aren't installed."
  (interactive)
  (dolist (package elpa-packages)
    (unless (or (member package package-activated-list)
                (functionp package))
      (message "Installing %s" (symbol-name package))
      (package-install package))))

(defun esk-online? ()
  "See if we're online.

Windows does not have the network-interface-list function, so we
just have to assume it's online."
  ;; TODO how could this work on Windows?
  (if (and (functionp 'network-interface-list)
           (network-interface-list))
      (some (lambda (iface) (unless (equal "lo" (car iface))
                         (member 'up (first (last (network-interface-info
                                                   (car iface)))))))
            (network-interface-list))
    t))

;; On your first run, this should pull in all the base packages.
(when (esk-online?)
  (unless package-archive-contents (package-refresh-contents))
  (senny-elpa-install))

;; Workaround for an ELPA bug that people are reporting but I've been
;; unable to reproduce:
(autoload 'paredit-mode "paredit" "" t)

;; Workaround for bug in the ELPA package for yaml-mode
(autoload 'yaml-mode "yaml-mode" "" t)
