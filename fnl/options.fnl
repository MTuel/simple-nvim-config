;; See ':help'

;; Set highlight on search.
(set vim.o.hlsearch false)

;; Make line numbers default.
(set vim.wo.number true)

;; Enable mouse mode.
(set vim.o.mouse :a)

;; Sync clipboard between OS and Neovim.
(set vim.o.clipboard :unnamedplus)

;; Enable break indent.
(set vim.o.breakindent true)

;; Save undo history.
(set vim.o.undofile true)

;; Case-insensitive searching UNLESS \C or capital in search.
(set vim.o.ignorecase true)

;; Keep signcolumn by default.
(set vim.wo.signcolumn :yes)

;; Decrease update time.
(set vim.o.updatetime 250)
(set vim.o.timeoutlen 300)

;; Set completeopt to have a better completion experience.
(set vim.o.completeopt "menuone,noselect")
