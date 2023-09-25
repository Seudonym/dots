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
  }
}

return plugins
