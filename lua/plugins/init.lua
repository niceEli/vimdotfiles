return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "github/copilot.vim",
    
    lazy = false
  },

  -- config for this stolen from https://github.com/romgrk/barbar.nvim
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    lazy = false
  },

  "NvChad/nvcommunity",
  { import = "nvcommunity.git.diffview" },
  { import = "nvcommunity.git.neogit" },
  { import = "nvcommunity.git.lazygit" },
  { import = "nvcommunity.tools.telescope-fzf-native" },
  { import = "nvcommunity.diagnostics.errorlens" },
  { import = "nvcommunity.editor.autosave" },
  { import = "nvcommunity.lsp.mason-lspconfig" },
  { import = "nvcommunity.lsp.barbecue" }
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
