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
