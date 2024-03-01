if vim.g.vscode then
  -- VSCode extension
  -- Do nothing for now.
  require("options.lua")
  require("keybinds.lua")
else
-- pick your plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lua.options")
require("lua.keybinds")

require("lazy").setup({
  { "Olical/nfnl", ft = "fennel" },
  require("lua.alpha-config"),
  require("lua.treesitter-config"),
  require("lua.catppuccin-config"),
  require("lua.which-key-config"),
  require("lua.oil-config"),
  require("lua.toggleterm-config"),
  require("lua.lsp-plugins"),
  require("lua.telescope-config"),
  require("lua.fzf-config"),
  require("lua.nvim-cmp-config"),
  require("lua.conjure-config")
}, {})

require("lua.lsp-config")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
end
