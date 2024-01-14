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

	(nmap ["<leader>gd" vim.lsp.buf.definition "[G]oto [D]efinition"])))	


(local servers {
		:lua_ls {
			:Lua {
				:workspace { :checkThirdParty false }
				:telemetry { :enable false }}}
		:fennel_language_server { }})

(local neodev (require :neodev))

(neodev.setup)

(local capabilities vim.lsp.protocol.make_client_capabilities)

(local mason_lspconfig (require :mason-lspconfig))

(mason_lspconfig.setup {
	:ensure_installed (vim.tbl_keys servers)})

(mason_lspconfig.setup_handlers {
(mason_lspconfig.setup_handlers [
	(fn [server-name]
		((. (. (require :lspconfig) server-name) :setup) {
			:capabilities (capabilities)
			:on_attach (on-attach)
			:settings (. servers server-name)
			:filetypes (. (or (. servers server-name) {}) :filetypes)
		}))
])
