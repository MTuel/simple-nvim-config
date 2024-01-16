-- :fennel:1705373621
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({"n", "v"}, "<Space>", "<Nop>", {silent = true})
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", {silent = true, noremap = true})
vim.keymap.set("i", "jk", "<ESC>", {silent = true, noremap = true})
vim.keymap.set("t", "jk", "<C-\\><C-n>", {silent = true, noremap = true})
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", {silent = true, expr = true})
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", {silent = true, expr = true})
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", {desc = "[B]uffer [P]revious"})
return vim.keymap.set("n", "<leader>bn", ":bnext<CR>", {desc = "[B]uffer [N]ext"})