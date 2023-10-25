local plugins = {
  {
    "rcarriga/nvim-dap-ui",
    event="VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap =require("dap")
      local dapui = require("dapui")
      require("dapui").setup()

    end
  },
  {
    "mfussengger/nvim-dap",
    config= function()
      require "custom.configs.dap"
    end
  },
  {
    "mhartington/fromatter.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.formatter"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event =  "VeryLazy",
    config = function ()
      require "custom.configs.lint"
    end
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "eslint-lsp",
        "js-debug-adapter",
        "prettier",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config=function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },

}

return plugins
