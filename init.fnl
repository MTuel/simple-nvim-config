;; Set leader key to Space.
(set vim.g.mapleader " ")
(set vim.g.maplocalleader " ")

(set vim.o.termguicolors true)

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
(local treesitter (require :treesitter))

(lazy.setup [
  :udayvir-singh/tangerine.nvim
  treesitter
] {
  :performance {
    :reset_packpath false
  }
})

(require :options)
(require :keybinds)

nil
