
# UNMAINTAINED

**This repository is unmaintained and will vanish! Use [e-max](http://github.com/senny/e-max)!**

***


# Emacs Configuration

My personal emacs configuration.

*   Python development
    * pyflakes checks using flymake
    * pep8 checks (key `C-°`)
*   HTML / XML
    * Validation with `XML Starlet` using flymakes
*   [Plone](http://www.plone.org/) / Zope development
    * Run zope instance within emacs in pdb mode (using emacs gud) (`C-c f f`)
    * Run `i18ndude` within emacs (`C-c f i` and `C-c f C-i`)
    * Run `plone.reload` from emacs (`C-c f r`)
*   [Perspectives](https://github.com/nex3/perspective-el)
    * Switching between multiple perspective (`C-p s`)
    * Opening buildout-based projects directly with perspective (`C-p b`)
    * Jabber perspective (`C-p j`)
*   `multi-term` integration with zsh (`C-p t` and `C-x t`)
    * See also my [dotfiles](https://github.com/jone/dotfiles) for zsh configuration
*   Packages are installed using [el-get](https://github.com/dimitri/el-get)

And lots of addons more..



## Installation of emacs und utils

I'm using this configuration on **Mac OS X** with **cocoa emacs**.

*  Install [homebrew](https://github.com/mxcl/homebrew), *the missing package manager for OS X*
*  Install cocoa emacs using homebrew: `brew install emacs --use-git-head --HEAD --cocoa`
*  For jabber support install *gnutls*: `brew install gnutls` (optional)
*  XML Starlet for xml flymake checks: `brew install xmlstarlet` (optional)
*  [contacts](http://gnufoo.org/contacts/) for mail / sms (optional)
*  Markdown command for markdown-mode: `brew install markdown` (optional)


## Installation of emacs config

*  Fork my emacs configs on github
*  Clone your forked emacs repo with git into any path you like (I have it under ~/projects/emacs-configs) using git (e.g. `git clone git@github.com:user/emacs-configs.git)
*  Install emacs configs by symlinking it from `~/.emacs.d` (e.g. `ln -s /Users/username/projects/emacs-configs /Users/username/.emacs.d`)
*  Start emacs from shell using `open -a emacs` or `emacsclient`
*  On initial run, various plugins will be installed using el-get. When errors occur, restart emacs again. This may take some minutes.


## Using pep8 and pyflakes for python development

*  Install [`pep8`](http://pypi.python.org/pypi/pep8)
    * wither with `easy_install pep8` or using buildout with `zc.recipe.egg`
    * Make sure the installed `pep8`-script is in your PATH
*  Install [`pyflakes`](http://pypi.python.org/pypi/pyflakes)
    * with `easy_install pyflakes`
    * Symlink the generated `pyflakes`-script to `~/bin/pyflakes`


## First steps

*  The `org-mode` notes are stored in `~/notes/org` - make sure this directory exists.
*  If you use jabber in emacs, change your credentials in `~/.emacs.d/private/extensions/jabber.el`
*  For changing the default theme (`theme-roller`) change `theme-roller-active-themes`in `~/.emacs.d/private/display.el`
*  Study the bindings: `M-a describe-bindings`
