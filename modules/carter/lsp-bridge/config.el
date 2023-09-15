;;; carter/lsp-bridge/config.el -*- lexical-binding: t; -*-

(use-package! lsp-bridge
  :config
  (map! :map acm-mode-map
        [tab]           #'acm-select-next
        [backtab]       #'acm-select-prev)
  (map! :map doom-leader-code-map
        :desc "LSP rename"
        "r"             #'lsp-bridge-rename
        :desc "find declaration"
        "j"             #'lsp-bridge-find-declaration)
  (require 'yasnippet)
  (yas-global-mode 1)
  (global-lsp-bridge-mode))
