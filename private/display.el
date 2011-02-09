;; remove ui components
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t))

(setq use-dialog-box nil
      visible-bell t
      echo-keystrokes 0.1
      inhibit-startup-message t
      truncate-partial-width-windows nil)

(defalias 'yes-or-no-p 'y-or-n-p)

;; start maximized
(vendor 'maxframe)
(add-hook 'window-setup-hook 'x-maximize-frame t)

;; open new files in the same window
(setq gnuserv-frame (car (frame-list)))

;; highlight the selected region
(transient-mark-mode 1)

;; Delete the region when typing
(delete-selection-mode 1)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; Highlight the current line
(global-hl-line-mode t)

(line-number-mode 0)
(column-number-mode 0)
(require 'linum)
(global-linum-mode t)

;; Use a vertical bar as cursor
(blink-cursor-mode 1)
(setq-default cursor-type '(bar . 2))
(setq-default indicate-empty-lines t)

;; theme-roller.el setup
(setq theme-roller-active-themes '(color-theme-lazy color-theme-monokai))


;; funs for maximizing
(defun jone-maximize-frame-on-alternate-screen ()
  "Maximizes the emacs window on *my* alternate / second screen"
  (interactive)
  (setq mf-display-padding-height 20)
  (setq mf-display-padding-width 0)
  (setq mf-offset-x 1440)
  (setq mf-offset-y 0)
  (setq mf-max-width 1920)
  (setq mf-max-height 1200)
  (x-maximize-frame)
  (x-maximize-frame))

(defun jone-maximize-frame-on-primary-screen ()
  "Maximizes the emacs window on *my* primary screen"
  (interactive)
  (setq mf-display-padding-height 40)
  (setq mf-display-padding-width 0)
  (setq mf-offset-x 40)
  (setq mf-offset-y 0)
  (setq mf-max-width 1440)
  (setq mf-max-height 900)
  (x-maximize-frame))

(defun jone-maximize-frame-on-big-primary-screen ()
  "Maximizes the emacs window on *my* alternate / second screen"
  (interactive)
  (setq mf-display-padding-height 20)
  (setq mf-display-padding-width 0)
  (setq mf-offset-x 40)
  (setq mf-offset-y 0)
  (setq mf-max-width 1920)
  (setq mf-max-height 1200)
  (x-maximize-frame)
  (x-maximize-frame))
