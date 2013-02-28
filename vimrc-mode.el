;;; vimrc-mode.el --- Enables syntax highlighting for .vimrc/_vimrc files

;; 2013 Andrew Pennebaker
;; URL: https://github.com/mcandre/vimrc-mode
;; Version: 0.0.1
;; Package-Requires: ()

; Thanks to Gilles
; http://stackoverflow.com/a/4238738/350106
(define-generic-mode 'vimrc-mode
    '()
    '()
    '(("^[\t ]*:?\\(!\\|ab\\|map\\|unmap\\)[^\r\n\"]*\"[^\r\n\"]*\\(\"[^\r\n\"]*\"[^\r\n\"]*\\)*$"
       (0 font-lock-warning-face))
      ("\\(^\\|[\t ]\\)\\(\".*\\)$"
      (2 font-lock-comment-face))
      ("\"\\([^\n\r\"\\]\\|\\.\\)*\""
       (0 font-lock-string-face)))
    '("/vimrc\\'" "\\_vim\\(rc\\)?\\'" "\\.vim\\(rc\\)?\\'")
    '((lambda ()
        (modify-syntax-entry ?\" ".")))
    "Generic mode for Vim configuration files.")

;;; vimrc-mode.el ends here
