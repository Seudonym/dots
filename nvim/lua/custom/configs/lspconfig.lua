local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { 
  "html",
  "tsserver",
  "emmet_ls",
  "cssls",
  "jdtls",
  -- "prismals",
  -- "yamlls",
  -- "docker_compose_language_service",
  -- "dockerls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

