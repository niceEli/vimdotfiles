local overrides = require "configs.overrides"
local masonInstalled = require "configs.mason"
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
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    lazy = false,
    opts = {
      ensure_installed = masonInstalled,
      auto_update = true,
    }
  },

  {
    "github/copilot.vim",
    
    lazy = false
  },
  
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    dependencies = {
      -- You will not need this if you installed the
      -- parsers manually
      -- Or if the parsers are in your $RUNTIMEPATH
      "nvim-treesitter/nvim-treesitter",

      "nvim-tree/nvim-web-devicons"
    }
  },

  {
    "ellisonleao/carbon-now.nvim",
    lazy = true,
    cmd = "CarbonNow",
    ---@param opts cn.ConfigSchema
    opts = { [[ your custom config here ]] }
  },
  
  {
    "folke/noice.nvim",
    version = "4.4.7",
    event = "VeryLazy",
    opts = {
      lsp = {
        signature = {
          enabled = false
        }
      },
      cmdline = {
        view = "cmdline", 
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      }
  },

  {
    "tiagovla/scope.nvim",
    lazy = false,
    hooks = {
      pre_tab_leave = function()
        vim.api.nvim_exec_autocmds('User', {pattern = 'ScopeTabLeavePre'})
      end,
  
      post_tab_enter = function()
        vim.api.nvim_exec_autocmds('User', {pattern = 'ScopeTabEnterPost'})
      end,
    },
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
      animation = true,
      auto_hide = true,
      no_name_title = "Untitled",
      -- insert_at_start = true,
      -- …etc.
    },
    lazy = false
  },

  {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast",
    keys = {
      {
        "<leader>op",
          function()
            local peek = require("peek")
              if peek.is_open() then
            peek.close()
            else
            peek.open()
            end
        end,
        desc = "Peek (Markdown Preview)",
      },
  },
    opts = { theme = "dark", app = "browser" },
  },

  "NvChad/nvcommunity",
  { import = "nvcommunity.git.diffview" },
  { import = "nvcommunity.git.neogit" },
  { import = "nvcommunity.git.lazygit" },
  { import = "nvcommunity.tools.telescope-fzf-native" },
  { import = "nvcommunity.diagnostics.errorlens" },
  { import = "nvcommunity.editor.autosave" },
  { import = "nvcommunity.lsp.mason-lspconfig" },
  { import = "nvcommunity.lsp.barbecue" },
  
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
      "vim", "lua", "vimdoc",
      "html", "css"
      },
    },
  },
}
