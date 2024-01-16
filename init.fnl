;; Settings that don't require Lazy.
(require :options)
(require :keybinds)

;; Bootstrap Lazy
(local lazypath (.. (vim.fn.stdpath "data") "/lazy/lazy.nvim"))

(when (not (vim.loop.fs_stat lazypath))
    (vim.fn.system [
		   "git"
		   "clone"
		   "--filter=blob:none"
		   "https://github.com/folke/lazy.nvim.git"
		   "--branch=stable"
		   lazypath
		   ]))
       
(vim.opt.rtp:prepend lazypath)

(local lazy (require :lazy))

;; Configure Lazy and Plugins
(lazy.setup [
  
  ;; Tangerine for Fennel Integration
  :udayvir-singh/tangerine.nvim

  ;; Theme Related Plugins
	(require :alpha-config)
  (require :treesitter-config)
  (require :catppuccin-config)
  (require :which-key-config)

  ;;:tpope/vim-sleuth

  (require :oil-config)
  (require :toggleterm-config)
  (require :lsp-plugins)
  (require :telescope-config)
  (require :fzf-config)
  (require :nvim-cmp-config)
  (require :conjure-config)
] {
  :performance {
    :reset_packpath false
  }
})

;; Post Lazy plugin configuration.
(require :lsp-config)

nil
