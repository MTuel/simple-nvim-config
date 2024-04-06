if vim.g.vscode then
  -- VSCode extension
  -- Do nothing for now.
  require("options")
  require("keybinds")
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

require("options")
require("keybinds")

require("lazy").setup({
  { "Olical/nfnl", ft = "fennel" },
  require("alpha-config"),
  require("treesitter-config"),
  require("gruvbox-config"),
  require("which-key-config"),
  require("oil-config"),
  require("lsp-plugins"),
  require("linter-config"),
  require("telescope-config"),
  require("fzf-config"),
  require("nvim-cmp-config"),
}, {})

-- Has to be loaded after plugins.
require("lsp-config")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
end
