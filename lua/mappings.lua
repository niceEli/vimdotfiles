require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- barbar

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true, desc = 'Move Buffer Back' })
map('n', '<A-.>', '<Cmd>BufferNext<CR>', { noremap = true, silent = true, desc = 'Move Buffer Forward' })
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', { noremap = true, silent = true, desc = 'Next Buffer' })
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', { noremap = true, silent = true, desc = 'Previous Buffer' })
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', { noremap = true, silent = true, desc = 'Buffer 1' })
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', { noremap = true, silent = true, desc = 'Buffer 2' })
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', { noremap = true, silent = true, desc = 'Buffer 3' })
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', { noremap = true, silent = true, desc = 'Buffer 4' })
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', { noremap = true, silent = true, desc = 'Buffer 5' })
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', { noremap = true, silent = true, desc = 'Buffer 6' })
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', { noremap = true, silent = true, desc = 'Buffer 7' })
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', { noremap = true, silent = true, desc = 'Buffer 8' })
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', { noremap = true, silent = true, desc = 'Buffer 9' })
map('n', '<A-0>', '<Cmd>BufferLast<CR>', { noremap = true, silent = true, desc = 'Last Buffer' })
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', { noremap = true, silent = true, desc = 'Pin Buffer' })
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', { noremap = true, silent = true, desc = 'Close Buffer' })
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<leader>Bp', '<Cmd>BufferPick<CR>', { noremap = true, silent = true, desc = 'Quick Switch Buffer' })
-- Sort automatically by...
map('n', '<leader>Bb', '<Cmd>BufferOrderByBufferNumber<CR>',
  { noremap = true, silent = true, desc = 'Sort Buffers By Number' })
map('n', '<leader>Bn', '<Cmd>BufferOrderByName<CR>', { noremap = true, silent = true, desc = 'Sort Buffers By Name' })
map('n', '<leader>Bd', '<Cmd>BufferOrderByDirectory<CR>', { noremap = true, silent = true, desc = 'Sort Buffers By Dir' })
map('n', '<leader>Bl', '<Cmd>BufferOrderByLanguage<CR>', { noremap = true, silent = true, desc = 'Sort Buffers By Lang' })
map('n', '<leader>Bw', '<Cmd>BufferOrderByWindowNumber<CR>',
  { noremap = true, silent = true, desc = 'Sort Buffers By Window Number' })

map('n', '<leader>lg', '<Cmd>LazyGit<CR>', { noremap = true, silent = true, desc = 'LazyGit' })

map('v', '<leader>ss', '<Cmd>CarbonNow<CR>', { noremap = true, silent = true, desc = 'Screenshot Code' })

map('n', '<leader>ow', '<Cmd>Telescope projects<CR>', { noremap = true, silent = true, desc = 'Open Project/Workspace' })

-- Keyboard users
map("n", "<C-t>", function()
  require("menu").open("default")
end, {})

-- mouse users + nvimtree users!
map("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- copilot using enter key

map('i', '<Right>', 'copilot#Accept("\\<Right>")', {
  expr = true,
  replace_keycodes = false
})
