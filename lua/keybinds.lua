-- :fennel:1704854218
vim.keymap.set({"n", "v"}, "<Space>", "<Nop>", {silent = true})
vim.keymap.set("t", "jk", "<C-\\><C-n>", {silent = true, noremap = true})
vim.keymap.set("i", "jk", "<Esc>", {silent = true, noremap = true})
return vim.keymap.set("t", "jk", "<C-\\><C-n>", {silent = true, noremap = true})