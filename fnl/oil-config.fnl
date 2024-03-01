(local oil-config {
    1 "stevearc/oil.nvim"
    :dependencies [
        :nvim-tree/nvim-web-devicons
    ]
    :config (fn []
      ((. (require :oil) :setup))
      (vim.keymap.set :n "<leader>ft" "<CMD>Oil<CR>"))
})

oil-config
