# vimrc-mode - Major mode for vimrc files

# INSTALL

    M-x package-install vimrc-mode

Then add to `~/.emacs`:

    (require 'vimrc-mode)
    (add-to-list 'auto-mode-alist '("\\.vim\\(rc\\)?\\'" . vimrc-mode))
