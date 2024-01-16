(local fzf-config {
    1 "nvim-telescope/telescope-fzf-native.nvim"
    :build "make"
    :cond (fn []
        (= (vim.fn.executable :make) 1)
    )})

fzf-config