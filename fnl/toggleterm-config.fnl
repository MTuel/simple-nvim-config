(local toggleterm-config {
    1 "akinsho/toggleterm.nvim"
    :version "*"
    :config (fn []
      ((. (require :toggleterm) :setup)) {
        :hide_numbers true
        :shade_terminals true
        :start_in_insert true
        :size (fn [ term ]
          (if (= term.direction "horizontal") 
              20
              (= term.direction "vertical") 
              (* vim.o.columns 0.5)))}
        
        (vim.keymap.set :n
                        "<leader>tt"
                        "<CMD>ToggleTerm direction=tab<CR>"
                        { :desc "[T]oggleTerm [T]ab" })
                        
        (vim.keymap.set :n
                        "<leader>th"
                        "<CMD>ToggleTerm direction=horizontal<CR>"
                        { :desc "[T]oggleTerm [H]orizontal" })
                        
        (vim.keymap.set :n
                        "<leader>tv"
                        "<CMD>ToggleTerm direction=vertical<CR>"
                        { :desc "[T]oggleTerm [V]ertical" })
        
        (vim.keymap.set :n
                        "<leader>tf"
                        "<CMD>ToggleTerm direction=float<CR>"
                        { :desc "[T]oggleTerm [F]loat" }))})

toggleterm-config