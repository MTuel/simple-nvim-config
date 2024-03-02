;; This ensures the space key is not mapped to anything else
;; so that we can map it as the leader key.
(vim.keymap.set [ :n :v ] ;; Modes
		"<Space>" ;; Key(s)
		"<Nop>"   ;; Command
		{ :silent true
			:remap true })

;; Set leader key to Space.
(set vim.g.mapleader " ")
(set vim.g.maplocalleader " ")

;; Remap temrinal escape sequences to ESC.
(vim.keymap.set :t 
		"<ESC>"
		"<C-\\><C-n>"
		{ :silent true :noremap true }
		)

;; Remap 'jk' for ergonimics.
(vim.keymap.set :i 
		"jk"
		"<ESC>"
		{ :silent true :noremap true }
		)

;; 'jk' in the terminal mode.
(vim.keymap.set :t 
		"jk"
		"<C-\\><C-n>"
		{ :silent true :noremap true }
		)

;; Remap(s) for dealing with word wrap.
(vim.keymap.set :n 
		"k"
		"v:count == 0 ? 'gk' : 'k'"
		{ :silent true :expr true }
		)

(vim.keymap.set :n 
		"j"
		"v:count == 0 ? 'gj' : 'j'"
		{ :silent true :expr true }
		)

(vim.keymap.set :n 
		"<leader>bp"
		":bprevious<CR>"
		{ :desc "[B]uffer [P]revious" }
		)

(vim.keymap.set :n 
		"<leader>bn"
		":bnext<CR>"
		{ :desc "[B]uffer [N]ext" }
		)

(vim.keymap.set :n
		"<leader>bk"
		"<CMD>bd<CR>"
		{ :desc "[B]uffer [K]ill" }
		)
