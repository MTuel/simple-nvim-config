# Simple Neovim Configuration

This is a basic configuration file for Neovim. It's a work in progress but the goal is to keep it pretty minimal.

## Useful Resources:

Here are some resources (in no particular order) I used in putting this together. These may help you too if you want to go down the rabbit hole of making your own Vim/Neovim configuration.

- [Barbarian Meets Coding: Neovim Plugins](https://www.barbarianmeetscoding.com/notes/neovim-plugins/#resources)

- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

- [0 to LSP: Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE&t)

- [no-plugins](https://github.com/changemewtf/no_plugins/tree/master)

- [Turn VIM into a full featured IDE with only one command](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)

## Requirements (WIP)

### [Pandoc](https://pandoc.org/)

- Used for [nvim-markdown-preview](https://github.com/davidgranstrom/nvim-markdown-preview).

- Install:

    - [Chocolatey:](https://github.com/chocolatey/choco) ```choco install pandoc```

    - [Winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/): ```winget install --source winget --exact --id JohnMacFarlane.Pandoc```

### [live-server](https://www.npmjs.com/package/live-server)

- Used for [nvim-markdown-preview](https://github.com/davidgranstrom/nvim-markdown-preview).

    - [NPM](https://nodejs.org/en/download) ```npm install -g @compodoc/live-server```

## Remaps (WIP)

```Ctrl+S = :w```

```Leader + f(ile) + t(ree)``` opens up netrw.

## Plugins (WIP)

- [lazy.nvim](https://github.com/folke/lazy.nvim)

    - Plugin Manager.

- [catpuccin](https://github.com/catppuccin/nvim) 

    - Color Theme.

- [nvim-markdown-preview](https://github.com/davidgranstrom/nvim-markdown-preview)
    
    - Supports previewing markdown files in a web browser. Automatically reloads on file save.

    - Keybindings:
        - ```Leader + m(arkdown) + p(review)```

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
    
    - Configs for the Nvim LSP Client.

- [which-key.nvim](https://github.com/folke/which-key.nvim)

    - Adds in a menu to display possible completions based on the currently typed keybind.

- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

    - Fuzzy finding over lists.

- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

    - Customizeable status line.
