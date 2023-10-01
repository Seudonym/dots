vim.g.copilot_assume_mapped = true
vim.g.nvchad_theme = "tokyodark"
vim.keymap.set('i', 'jj', '<esc>')

vim.api.nvim_create_user_command("DiagnosticToggle", function()
	local config = vim.diagnostic.config
	local vt = config().virtual_text
	config {
		virtual_text = not vt,
		--underline = not vt,
	  --signs = not vt,
	}
end, { desc = "toggle diagnostic" })

vim.keymap.set('n', '<leader>dt', '<cmd>DiagnosticToggle<cr>')
