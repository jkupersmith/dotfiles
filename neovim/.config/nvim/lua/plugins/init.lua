-- NOTE: `opts = {}` is the same as calling `require('X').setup({})`

return {
    -- git
    'tpope/vim-fugitive',
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
    -- undotree
    'mbbill/undotree',
    -- catppuccin color scheme
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme catppuccin]])
        end,
        opts = {
            integrations = {
                bufferline = true,
                cmp = true,
                fidget = true,
                gitsigns = true,
                lsp_trouble = true,
                -- markdown = true,
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                },
                telescope = true,
                treesitter = true,
                which_key = true,
            },
        },
    },
    -- -- kanagawa color scheme
    -- {
    --     'rebelot/kanagawa.nvim',
    --     lazy = true,
    --     -- lazy = false,
    --     -- priority = 1000,
    --     -- config = function()
    --     --     vim.cmd([[colorscheme kanagawa]])
    --     -- end,
    -- },
    -- -- tokyonight color scheme
    -- {
    --     'folke/tokyonight.nvim',
    --     lazy = true,
    --     -- lazy = false,
    --     -- priority = 1000,
    --     -- config = function()
    --     --     vim.cmd([[colorscheme tokyonight]])
    --     -- end,
    -- },
    -- lspconfig
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            -- Automatically install LSPs to stdpath for neovim
            { 'williamboman/mason.nvim', config = true },
            'williamboman/mason-lspconfig.nvim',
            -- Useful status updates for LSP
            -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
            {
                'j-hui/fidget.nvim',
                tag = "legacy",
                opts = {
                    window = {
                        blend = 0,
                    },
                },
            },
            -- Additional lua configuration, makes nvim stuff amazing!
            -- See: `:help neodev.nvim.txt`
            {
                'folke/neodev.nvim',
                opts = { experimental = { pathStrict = true } },
            },
        },
    },
    -- autocomplete
    {
        'hrsh7th/nvim-cmp',
        dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
    },
    -- telescope: highly extendable fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- treesitter: Treesitter-based highlighting (See: https://github.com/tree-sitter/tree-sitter)
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate',
    },
    -- which-key: displays a popup with possible key bindings of the command you started typing
    {
        'folke/which-key.nvim',
        opts = {
        },
    },
    -- bufferline: show open buffers as tabs
    {
        'akinsho/bufferline.nvim',
        version = "v3.*",
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'catppuccin',
        },
        config = function()
            require("bufferline").setup {
                highlights = require("catppuccin.groups.integrations.bufferline").get()
            }
        end,
        opts = {}
    },
    -- lualine: improved status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        opts = {
            options = {
                theme = 'catppuccin',
            },
        },
    },
    -- trouble: A pretty list for showing diagnostics, references, telescope results, etc..
    {
        'folke/trouble.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', },
        opts = {},
    },
    -- todo-comments: highlight and search for todo comments
    {
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim', },
        opts = {},
    },
    -- gitsigns: git decorations for added, removed, and changed lines
    -- TODO: Keymaps: Gitsigns provides an on_attach callback which can be used to setup buffer mappings.
    {
        'lewis6991/gitsigns.nvim',
        opts = {},
    },
    -- Smart and Powerful commenting plugin for neovim
    {
        'numToStr/Comment.nvim',
        opts = {},
    },
}
