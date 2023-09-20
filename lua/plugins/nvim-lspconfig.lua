return
-- NOTE: This is where your plugins related to LSP can be installed.
--  The configuration is done below. Search for lspconfig to find it below.
{
  -- LSP Configuration & Plugins
  -- https://github.com/neovim/nvim-lspconfig
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Automatically install LSPs to stdpath for neovim
    -- https://github.com/williamboman/mason.nvim
    { 'williamboman/mason.nvim', config = true },
    -- https://github.com/williamboman/mason-lspconfig.nvim
    'williamboman/mason-lspconfig.nvim',

    -- Useful status updates for LSP
    -- https://github.com/j-hui/fidget.nvim
    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

    -- Additional lua configuration, makes nvim stuff amazing!
    -- https://github.com/folke/folke
    'folke/neodev.nvim',
  },
}
