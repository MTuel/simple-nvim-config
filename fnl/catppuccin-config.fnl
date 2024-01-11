(var package-config {
	1 :catppuccin/nvim
	:name "catppuccin"
	:priority 1000
	:config (fn [] (vim.cmd.colorscheme "catppuccin-mocha"))
	})


package-config
