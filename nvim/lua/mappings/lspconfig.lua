local M = {
  n = {
    ["gD"] = { '<CMD> lua vim.lsp.buf.declaration() <CR>', "LSP declaration", },

    ["gd"] = { '<CMD> lua vim.lsp.buf.definition() <CR>', "LSP definition", },

    ["K"] = { '<CMD> lua vim.lsp.buf.hover() <CR>', "LSP hover", },

    ["gi"] = { '<CMD> lua vim.lsp.buf.implementation() <CR>', "LSP implementation", },

    ["<leader>ls"] = { '<CMD> lua vim.lsp.buf.signature_help() <CR>', "LSP signature help", },

    ["<leader>D"] = { '<CMD> lua vim.lsp.buf.type_definition() <CR>', "LSP definition type", },

    ["<leader>ra"] = { '<CMD> lua require("nvchad.renamer").open() <CR>', "LSP rename", },

    ["<leader>ca"] = { '<CMD> lua vim.lsp.buf.code_action() <CR>', "LSP code action", },

    ["gr"] = { '<CMD> lua vim.lsp.buf.references() <CR>', "LSP references", },

    ["<leader>lf"] = { '<CMD> lua vim.diagnostic.open_float { border = "rounded" } <CR>', "Floating diagnostic", },

    ["[d"] = { '<CMD> lua vim.diagnostic.goto_prev { float = { border = "rounded" } } <CR>', "Goto prev", },

    ["]d"] = { '<CMD> lua vim.diagnostic.goto_next { float = { border = "rounded" } } <CR>', "Goto next", },

    ["<leader>q"] = { '<CMD> lua vim.diagnostic.setloclist() <CR>', "Diagnostic setloclist", },

    ["<leader>wa"] = { '<CMD> lua vim.lsp.buf.add_workspace_folder() <CR>', "Add workspace folder", },

    ["<leader>wr"] = { '<CMD> lua vim.lsp.buf.remove_workspace_folder() <CR>', "Remove workspace folder", },

    ["<leader>wl"] = { '<CMD> lua print(vim.inspect(vim.lsp.buf.list_workspace_folders())) <CR>', "List workspace folders", },
  },

  v = {
    ["<leader>ca"] = { '<CMD> lua vim.lsp.buf.code_action() <CR>', "LSP code action", },
  },
}

return M
