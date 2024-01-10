(var config {
  1 :nvim-treesitter/nvim-treesitter
  :dependencies [:nvim-treesitter/nvim-treesitter-textobjects]
  :build ":TSUpdate"
  :config (fn [] 
	   (local config (require "nvim-treesitter.configs"))
	   (config.setup {
			 :ensure_installed [
			 	:c_sharp
			 	:css
			 	:fennel
			 	:html
			 	:javascript
			 	:json
			 	:latex
			 	:lua
				:markdown
			 	:markdown_inline
			 	:python
			 	:typescript 
				:vimdoc
			 	:vim]

			 :auto_install false

			 :highlight {
			 	:enable true
			 }}))})

config
