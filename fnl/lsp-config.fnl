(fn on-attach [_ bufnr]
       (fn nmap [keys func desc]
	 (if (desc)
	     (desc (.. "LSP: " desc)))
	
	(vim.keymap.set [
			:n
			keys
			func
			{
				:buffer bufnr
				:desc desc
			}])

	(nmap ["<leader>rn" vim.lsp.buf.rename "[R]e[n]ame"])
	(nmap ["<leader>ca" vim.lsp.buf.code_action "[C]ode [A]ction"])

	(nmap ["<leader>gd" vim.lsp.buf.definition "[G]oto [D]efinition"])
	))	

(local neodev (require :neodev))

(neodev.setup)

;;(var capabilities vim.lsp.protocol.make_client_capabilities)

;;(local cmp-nvim-lsp (require :cmp_nvim_lsp))

;;(set capabilities (cmp-nvim-lsp.default_capabilities capabilities)) 

