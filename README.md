# Simple Neovim Configuration

This is a basic configuration file for Neovim. The goal is to keep it pretty minimal but that may change as time goes on and I use Neovim more and accrue additional plugins.

## Useful Resources:

Here are some resources (in no particular order) I used in putting this together. These may help you too if you want to go down the rabbit hole of making your own Vim/Neovim configuration.

- [Barbarian Meets Coding: Neovim Plugins](https://www.barbarianmeetscoding.com/notes/neovim-plugins/#resources)

- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

- [0 to LSP: Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE&t)

- [no-plugins](https://github.com/changemewtf/no_plugins/tree/master)

- [Turn VIM into a full featured IDE with only one command](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)

## Requirements

### [Pandoc](https://pandoc.org/)

- Used for [nvim-markdown-preview](https://github.com/davidgranstrom/nvim-markdown-preview).
- Install:

    - [Chocolatey:](https://github.com/chocolatey/choco) ```choco install pandoc```

    - [Winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/): ```winget install --source winget --exact --id JohnMacFarlane.Pandoc```

### [live-server](https://www.npmjs.com/package/live-server)

- Used for [nvim-markdown-preview](https://github.com/davidgranstrom/nvim-markdown-preview).

    - [NPM](https://nodejs.org/en/download) ```npm install -g @compodoc/live-server```

## Plugins

- Plugin Manager: [folke/lazy.nvim](https://github.com/folke/lazy.nvim)

- Color Theme: [catpuccin/nvim](https://github.com/catppuccin/nvim) 

- File Tabs: [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)

- Markdown Previewing: [davidgranstrom/nvim-markdown-preview](https://github.com/davidgranstrom/nvim-markdown-preview)
