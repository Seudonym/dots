function load_mappings(map)
  local n = map.n or {}  
  local v = map.v or {}
  local t = map.t or {}
  -- Set the mappings
  for k, v in pairs(n) do
    vim.api.nvim_set_keymap('n', k, v[1], {noremap = true, silent = true})
  end

  for k, v in pairs(v) do
    vim.api.nvim_set_keymap('v', k, v[1], {noremap = true, silent = true})
  end

  for k, v in pairs(t) do
    vim.api.nvim_set_keymap('t', k, v[1], {noremap = true, silent = true})
  end
end

return load_mappings
