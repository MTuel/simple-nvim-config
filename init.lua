-- Basic Init.lua



-- # BASE REMAPS & CONFIGURATIONS #
-- Remaps for basic Neovim commands.

-- Remap the 'leader' key to the Spacebar.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Map the 'Ex' command to Spacebar + f(ile) + t(ree).
-- This will open netrw, which is the built in filetree.
vim.keymap.set('n', '<leader>ft', vim.cmd.Ex)

-- Map CTRL+S to write the file when in Normal, Insert, or Visual mode.
vim.keymap.set({'n', 'i', 'v'}, '<C-s>', '<cmd>w<cr>')

-- Set TAB size to 4 instead of the default 8.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.termguicolors = true

-- # FINDING FILES #
-- ':find' is the command used to search for files.

-- Search down into subfolders.
vim.opt.path:append('**')

-- Display all matching files when you TAB to complete.
-- Add a '*' to the beginning\end of the search to make it fuzzy.
vim.opt.wildmenu = true

-- Simple command to echo the current file's name and path in case it is not displayed.
vim.cmd('command! This echo expand(\'%\')')



-- # PLUGIN MANAGER #
-- Installs Lazy.nvim for plugin management.

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- # PLUGINS #
-- Plugins are installed below when Lazy.nvim is setup.

require('lazy').setup({

	-- # THEME #
	-- Catppuccin Mocha.
	{ 
		'catppuccin/nvim', 
		name = 'catppuccin', 
		priority = 1000 
	},
	
	-- # BUFFERLINE #
	-- Provides tabs at the top for each of the open buffers, similar to VS Code.
	{
		'akinsho/bufferline.nvim', 
		version = '*', 
		dependencies = 'nvim-tree/nvim-web-devicons'
	},

	-- # MARKDOWN PREVIEW #
	{
		'davidgranstrom/nvim-markdown-preview'
    },
}, {})

-- # PLUGIN CONFIGURATION #

-- Catppuccin
vim.cmd 'colorscheme catppuccin'


-- Bufferline
require('bufferline').setup{
	highlights = require('catppuccin.groups.integrations.bufferline').get()
}
