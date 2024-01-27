require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  -- Default handler for all servers:
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {}
  end,

  -- Override default handler for specific servers:
}
