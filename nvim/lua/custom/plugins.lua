local plugins = {
  {'nvim-tree/nvim-web-devicons',
    config = function ()
      require "custom.configs.devicons"
    end
  },
  {
    "NvChad/nvterm",
    config = function ()
      require("nvterm").setup()
      require "custom.configs.nvterm"
    end,
  },
  {
  "neovim/nvim-lspconfig",
   dependencies = {
     "jose-elias-alvarez/null-ls.nvim",
     config = function()
       require "custom.configs.null-ls"
     end,
   },
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
    require("copilot").setup({
      suggestion = { enabled = true, auto_trigger = true},
      panel = { enabled = false },
    })
    end,
  },
  {
  "zbirenbaum/copilot-cmp",
    config = function ()
    require("copilot_cmp").setup()
    end
  }

}

return plugins
