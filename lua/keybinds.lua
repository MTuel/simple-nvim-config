-- :fennel:1704933025
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({"n", "v"}, "<Space>", "<Nop>", {silent = true})
vim.keymap.set("t", "jk", "<C-\\><C-n>", {silent = true, noremap = true})
vim.keymap.set("i", "jk", "<Esc>", {silent = true, noremap = true})
vim.keymap.set("t", "jk", "<C-\\><C-n>", {silent = true, noremap = true})
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", {silent = true, expr = true})
return vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", {silent = true, expr = true})