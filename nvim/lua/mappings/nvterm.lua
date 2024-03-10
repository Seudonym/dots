local M =  {
  n = {
    -- toggle in normal mode
    ["<A-i>"] = { '<CMD> lua require("nvterm.terminal").toggle "float" <CR>', "Toggle floating term", },

    ["<A-h>"] = { '<CMD> lua require("nvterm.terminal").toggle "horizontal" <CR>', "Toggle horizontal term", },

    ["<A-v>"] = { '<CMD> lua require("nvterm.terminal").toggle "vertical" <CR>', "Toggle vertical term", },

    -- new
    ["<leader>h"] = { '<CMD> lua require("nvterm.terminal").new "horizontal" <CR>', "New horizontal term", },

    ["<leader>v"] = { '<CMD> lua require("nvterm.terminal").new "vertical" <CR>', "New vertical term", }, },

  t = {
    -- toggle in terminal mode
    ["<A-i>"] = { '<CMD> lua require("nvterm.terminal").toggle "float" <CR>', "Toggle floating term", },

    ["<A-h>"] = { '<CMD> lua require("nvterm.terminal").toggle "horizontal" <CR>', "Toggle horizontal term", },

    ["<A-v>"] = { '<CMD> lua require("nvterm.terminal").toggle "vertical" <CR>', "Toggle vertical term", },
  },

}

return M
