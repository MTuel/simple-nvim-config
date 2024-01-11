(var lsp-config {
	1 :neovim/nvim-lspconfig
	:dependencies [

		;; Automatically install LSPs to stdpath for neovim.
		{
			1 :williamboman/mason.nvim
			:config true
		}

		;; Useful status updates for LSP.
		:williamboman/mason-lspconfig.nvim
		{
			1 :j-hui/fidget.nvim
			:tag "legacy"
			:opts { }
		}

		;; Additional lua configuration.
		:folke/neodev.nvim
	]})


lsp-config
