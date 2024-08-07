# Vim / NVIM Dotfiles

This is my personal vim/nvim configuration. It is based on [NvChad](https://nvchad.com)

I daily drive this

## Installation

### Prerequisites

(idk fully about tho)
- Neovim 0.5+
- git
- nodejs
- npm
- fzf

### Steps

1. Clone this repo to your local machine
2. Open nvim and run `:MasonInstall`/`:MasonInstallAll`

#### UNIX

```bash
git clone https://github.com/niceEli/vimdotfiles ~/.config/nvim && nvim
```
##### Flatpak

```bash
git clone https://github.com/niceEli/vimdotfiles ~/.var/app/io.neovim.nvim/config/nvim && flatpak run io.neovim.nvim
```

#### Windows (PowerShell)

```powershell
git clone https://github.com/niceEli/vimdotfiles $ENV:USERPROFILE\AppData\Local\nvim && nvim
```

### Old NvChad Readme
**This repo is supposed to used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)
