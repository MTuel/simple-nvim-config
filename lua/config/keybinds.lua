-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('i', 'jk', '<ESC>', { silent = true, noremap = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Map window navigation to just CTRL + h/j/k/l
vim.keymap.set({'n', 't'}, '<C-h>', '<C-W>h')
vim.keymap.set({'n', 't'}, '<C-j>', '<C-W>j')
vim.keymap.set({'n', 't'}, '<C-k>', '<C-W>k')
vim.keymap.set({'n', 't'}, '<C-l>', '<C-W>l')

-- Map buffer navigation to Space + b + p/n
vim.keymap.set('n', '<leader>bp', ':bprevious<cr>', { desc = '[B]uffer [P]revious' })
vim.keymap.set('n', '<leader>bn', ':bnext<cr>', { desc = '[B]uffer [N]ext'} )

-- Easy activation of Markdown Preview
vim.keymap.set('n', '<leader>mp', ':MarkdownPreview<cr>', { desc = '[M]arkdown [P]review'})

-- [[Heretical Keymaps]]

-- Map CTRL+S to write the file when in Normal, Insert, or Visual mode.
vim.keymap.set({'n', 'i', 'v'}, '<C-s>', '<cmd>w<cr>')

-- Map CTRL+Z to undo in Insert mode
vim.keymap.set('i', '<C-z>', '<cmd>u<cr>')


