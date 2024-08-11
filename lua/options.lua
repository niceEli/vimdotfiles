require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font Mono,JetBrainsMono Nerd Font,Consolas:h14" -- text below applies for VimScript
end

-- Set color columns at 72, 80, and 120 characters
vim.opt.colorcolumn = "72,80,120"
