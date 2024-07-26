# Simple Neovim Configuration

This is a simple configuration file for Neovim. It's a work in progress but the goal is to keep it relatively minimal.

The primary use case here is as a general purpose development environment. 

## Useful Resources:

Here are some resources (in no particular order) I used in putting this together. These may help you too if you want to go down the rabbit hole of making your own Vim/Neovim configuration.

- [Barbarian Meets Coding: Neovim Plugins](https://www.barbarianmeetscoding.com/notes/neovim-plugins/#resources)

- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

- [0 to LSP: Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE&t)

- [no-plugins](https://github.com/changemewtf/no_plugins/tree/master)

- [Turn VIM into a full featured IDE with only one command](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)

## Requirements

### [mingw](https://www.mingw-w64.org/)

- Used for [telescope-nvim-fzf-native](https://github.com/nvim-telescope/telescope-fzf-native.nvim) and [mason.nvim](https://github.com/williamboman/mason.nvim)

    - ```choco install mingw```

## Plugins (WIP)

- [lazy.nvim](https://github.com/folke/lazy.nvim)

    - Plugin Manager.

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
    
    - Configs for the Neovim LSP Client.

- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

- [Comment.nvim](https://github.com/numToStr/Comment.nvim)

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

- [which-key.nvim](https://github.com/folke/which-key.nvim)

    - Adds in a menu to display possible completions based on the currently typed keybind.

- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

    - Fuzzy finding over lists.

- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

    - Customizeable status line.

- [vim-sleuth](https://github.com/tpope/vim-sleuth)

- [vim-fugitive](https://github.com/tpope/vim-fugitive)

- [vim-rhubarb](https://github.com/tpope/vim-rhubarb)

- [vim-razor](https://github.com/jlcrochet/vim-razor)

- [copilot.vim](https://github.com/github/copilot.vim)

- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
