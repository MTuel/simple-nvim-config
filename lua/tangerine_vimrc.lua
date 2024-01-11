-- :fennel:1704948418
require("options")
require("keybinds")
local lazypath = (vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
else
end
do end (vim.opt.rtp):prepend(lazypath)
local lazy = require("lazy")
lazy.setup({"udayvir-singh/tangerine.nvim", require("treesitter-config"), require("catppuccin-config"), require("which-key-config"), require("lsp-plugins")}, {performance = {reset_packpath = false}})
require("lsp-config")
return nil