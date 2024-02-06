function load_mappings(map)
  -- Set the mappings
  for k, v in pairs(map.n) do
    vim.api.nvim_set_keymap('n', k, v[1], {noremap = true, silent = true})
  end

  for k, v in pairs(map.v) do
    vim.api.nvim_set_keymap('v', k, v[1], {noremap = true, silent = true})
  end
end

return load_mappings
