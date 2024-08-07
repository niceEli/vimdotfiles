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
map('n', '<Space>Bp', '<Cmd>BufferPick<CR>', { noremap = true, silent = true, desc = 'Quick Switch Buffer' })
-- Sort automatically by...
map('n', '<Space>Bb', '<Cmd>BufferOrderByBufferNumber<CR>', { noremap = true, silent = true, desc = 'Sort Buffers By Number' })
map('n', '<Space>Bn', '<Cmd>BufferOrderByName<CR>', { noremap = true, silent = true, desc = 'Sort Buffers By Name' })
map('n', '<Space>Bd', '<Cmd>BufferOrderByDirectory<CR>', { noremap = true, silent = true, desc = 'Sort Buffers By Dir' })
map('n', '<Space>Bl', '<Cmd>BufferOrderByLanguage<CR>', { noremap = true, silent = true, desc = 'Sort Buffers By Lang' })
map('n', '<Space>Bw', '<Cmd>BufferOrderByWindowNumber<CR>', { noremap = true, silent = true, desc = 'Sort Buffers By Window Number' })

map('n', '<space>lg', '<Cmd>LazyGit<CR>', { noremap = true, silent = true, desc = 'LazyGit' })

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- copilot using enter key

vim.keymap.set('i', '<Right>', 'copilot#Accept("\\<Right>")', {
  expr = true,
  replace_keycodes = false
})

