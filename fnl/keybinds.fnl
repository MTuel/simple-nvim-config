;; Not sure what this does.
(vim.keymap.set [ :n :v ] 
		"<Space>"
		"<Nop>"
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

(vim.keymap.set :t 
		"jk"
		"<C-\\><C-n>"
		{ :silent true :noremap true }
		)
