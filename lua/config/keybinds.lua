-- [[ Basic Keymaps ]]
-- These keymaps are not dependent on any plugins.

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap terminal escape sequence to ESC.
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')

-- Remap 'jk' to ESC for the ergonomics.
vim.keymap.set('i', 'jk', '<ESC>', { silent = true, noremap = true })
vim.keymap.set('t', 'jk', '<C-\\><C-n>', { silent = true, noremap = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Map window navigation to just CTRL + h/j/k/l
vim.keymap.set({'n', 't'}, '<C-h>', '<C-W>h')
vim.keymap.set({'n', 't'}, '<C-j>', '<C-W>j')
vim.keymap.set({'n', 't'}, '<C-k>', '<C-W>k')
vim.keymap.set({'n', 't'}, '<C-l>', '<C-W>l')

-- Map buffer navigation to Space + b + p/n
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = '[B]uffer [P]revious' })
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = '[B]uffer [N]ext'} )

-- Quick activation of Netrw
vim.keymap.set('n', '<leader>ft', ':Ex<CR>', {desc = '[F]ile [T]ree'})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[Heretical Keymaps]]

-- Map CTRL+S to write the file when in Normal, Insert, or Visual mode.
--vim.keymap.set({'n', 'i', 'v'}, '<C-s>', '<cmd>w<cr>')

-- Map CTRL+Z to undo in Insert mode
--vim.keymap.set('i', '<C-z>', '<cmd>u<cr>')


