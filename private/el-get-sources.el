(add-to-list 'el-get-recipe-path (concat private-config-dir "/recipes"))

(setq el-get-sources
      '(el-get
        yaml-mode
        rinari
        maxframe
        erc-highlight-nicknames
        java-mode-indent-annotations
        flymake-point
        ;; switch-window
        haml-mode
        sass-mode
        yari
        rvm
        theme-roller

        senny-textmate
        senny-ido-hacks
        senny-yasnippet
        senny-auto-complete
        senny-magit
        senny-minibuffer-complete-cycle
        senny-rspec-mode
        senny-perspective
        senny-mode-compile
        senny-ibuffer
        senny-browse-kill-ring
        senny-browse-kill-ring-plus
        senny-better-registers
        senny-ert
        senny-csv-mode
        senny-textile-mode
        senny-markdown-mode
        senny-rhtml-mode
        senny-cucumber

        jone-multi-term
        jone-full-ack

        ;; some packages are not yet in the new elpa
        ;; repository - so use them from source for now
        (:name gist
               :type git
               :url "https://github.com/defunkt/gist.el.git")

        ))

(el-get 'sync)
