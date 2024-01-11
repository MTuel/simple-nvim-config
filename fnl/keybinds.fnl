;; Set leader key to Space.
(set vim.g.mapleader " ")
(set vim.g.maplocalleader " ")

;; Not sure what this does.
(vim.keymap.set [ :n :v ] ;; Modes
		"<Space>" ;; Key(s)
		"<Nop>"   ;; Command
		{ :silent true }
		)

;; Remap temrinal escape sequences to ESC.
(vim.keymap.set :t 
		"jk"
		"<C-\\><C-n>"
		{ :silent true :noremap true }
		)

;; Remap 'jk' for ergonimics.
(vim.keymap.set :i 
		"jk"
		"<Esc>"
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
		"<leader>ft"
		":Ex<CR>"
		{ :desc "[F]ile [T]ree" }
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
