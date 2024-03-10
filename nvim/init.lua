-- init.lua
-- jj to escape
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
-- General settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.clipboard = "unnamedplus"

-- Indentation settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Enable mouse
vim.o.mouse = 'a'

-- Enable line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable 24bit color
vim.opt.termguicolors = true

-- Disable cmdline
vim.opt.cmdheight = 0

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set leader key
vim.g.mapleader = " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
local plugins = require("plugins")
require("lazy").setup(plugins, opts)

-- Load mappings
local load_mappings = require("utils.load_mappings")
load_mappings(require("mappings.general"))

-- Copilot
vim.keymap.set('i', '<M-l>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})
vim.g.copilot_no_tab_map = true


vim.cmd("colorscheme nordfox")
