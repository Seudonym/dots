-- plugins/init.lua
local load_mappings = require("utils.load_mappings")

local plugins = {
    -- LSP stuff
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig"
        },

        lazy = false,

        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "cssls",
                    "html",
                    "emmet_language_server",
                    "tsserver",
                    "vimls",
                },
            })
            require("mason-lspconfig").setup_handlers {
                -- The first entry (without a key) will be the default handler
                -- and will be called for each installed server that doesn't have
                -- a dedicated handler.
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {}
                end
                -- Next, you can provide a dedicated handler for specific servers.
                -- For example, a handler override for the `rust_analyzer`:
                -- ["rust_analyzer"] = function()
                --     require("rust-tools").setup {}
                -- end
            }

            -- Mappings
            load_mappings(require("mappings.lspconfig"))
        end
    },

    -- CMP
    {
        "hrsh7th/nvim-cmp",
        version = false, -- last release is way too old
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                    { name = 'path' },
                    { name = 'luasnip' },
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.close(),
                    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
                    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                })

            })
        end
    },

    {
        "rafamadriz/friendly-snippets",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        event = "BufRead",
        run = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup {
                auto_install = true,
                highlight = {
                    enable = true
                }
            }
        end
    },

    -- Terminal
    {
        "NvChad/nvterm",
        config = function()
            require("nvterm").setup()

            -- Mappings
            load_mappings(require("mappings.nvterm"))
        end
    },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },

        config = function()
            require("telescope").setup()

            -- Mappings
            load_mappings(require("mappings.telescope"))
        end
    },

    -- Copilot
    {
        "github/copilot.vim",
        event = "BufRead",
    },

    -- Bufferline
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',

        config = function()
            require("bufferline").setup()
            load_mappings(require("mappings.bufferline"))
        end
    },

    -- -- Lualine
    -- {
    --     'nvim-lualine/lualine.nvim',
    --     dependencies = { 'nvim-tree/nvim-web-devicons' },
    --     config = function()
    --         require("lualine").setup({
    --             options = {
    --                 icons_enabled = true,
    --                 theme = 'auto',
    --                 component_separators = { left = '', right = '' },
    --                 section_separators = { left = '', right = '' },
    --                 disabled_filetypes = {
    --                     statusline = {},
    --                     winbar = {},
    --                 },
    --                 ignore_focus = {},
    --                 always_divide_middle = true,
    --                 globalstatus = false,
    --                 refresh = {
    --                     statusline = 1000,
    --                     tabline = 1000,
    --                     winbar = 1000,
    --                 }
    --             },
    --             sections = {
    --                 lualine_a = { 'mode' },
    --                 lualine_b = { 'branch', 'diff', 'diagnostics' },
    --                 lualine_c = { 'filename' },
    --                 lualine_x = { 'encoding', 'fileformat', 'filetype' },
    --                 lualine_y = { 'progress' },
    --                 lualine_z = { 'location' }
    --             },
    --             inactive_sections = {
    --                 lualine_a = {},
    --                 lualine_b = {},
    --                 lualine_c = { 'filename' },
    --                 lualine_x = { 'location' },
    --                 lualine_y = {},
    --                 lualine_z = {}
    --             },
    --             tabline = {},
    --             winbar = {},
    --             inactive_winbar = {},
    --             extensions = {}
    --         })
    --     end
    -- },

    -- Mini
    {
        'echasnovski/mini.nvim',
        config = function()
            require("mini.pairs").setup()
            require("mini.surround").setup()
            require("mini.comment").setup({
                mappings = {
                    comment_line = " /",
                    comment_visual = " /"
                }
            })
            require("mini.files").setup()
            vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { noremap = true, silent = true })

            require("mini.jump2d").setup()
            require("mini.animate").setup()
            require("mini.statusline").setup()
        end,
    },
    
    -- Themes
    { "EdenEast/nightfox.nvim" } 
}

return plugins
