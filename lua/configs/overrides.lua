local M = {}

-- git support in nvimtree
M.nvimtree = {
  hijack_cursor = true,
  filters = {
    dotfiles = false,
    git_ignored = false,
    custom = {
      "^.git$",
    },
  },
  renderer = {
    full_name = true,
    group_empty = true,
  },
  diagnostics = {
    enable = true,
  },
}

return M