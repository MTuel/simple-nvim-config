-- :fennel:1704920884
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.termguicolors = true
local lazypath = (vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
else
end
do end (vim.opt.rtp):prepend(lazypath)
local lazy = require("lazy")
local treesitter = require("treesitter")
lazy.setup({"udayvir-singh/tangerine.nvim", treesitter}, {performance = {reset_packpath = false}})
require("options")
require("keybinds")
return nil