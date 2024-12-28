-- [[ Basic Keymaps ]]
-- These keymaps are not dependent on any plugins.

-- Keymaps for better default experience.
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap terminal escape sequence to ESC.
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>')

-- Remap 'jk' to ESC for the ergonomics.
vim.keymap.set('i', 'jk', '<ESC>', { silent = true, noremap = true })
vim.keymap.set('t', 'jk', '<C-\\><C-n>', { silent = true, noremap = true })

-- Remap for dealing with word wrap.
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Map buffer navigation to Space + b + p/n.
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = '[B]uffer [P]revious' })
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = '[B]uffer [N]ext'} )
vim.keymap.set('n', '<leader>bk', ':bd<CR>', { desc = '[B]uffer [K]ill'} )

-- Diagnostic Keymaps.
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Lua Execution Keymaps.
vim.keymap.set('n', '<leader>xb', '<cmd>source %<CR>', { desc = '[E]xecute [B]uffer' })
vim.keymap.set('n', '<leader>xl', '<cmd>:.lua<CR>', { desc = '[E]xecute [L]ine' })
vim.keymap.set('v', '<leader>x', '<cmd>:lua<CR>', { desc = '[E]xecute Selection' })
