-- NOTE: `opts = {}` is the same as calling `require('X').setup({})`

return {
    -- git
    'tpope/vim-fugitive',
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
    -- undotree
    'mbbill/undotree',
    -- tokyonight colorscheme
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme tokyonight]])
        end,
    },
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
                opts = {},
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
        opts = {},
    },
    -- bufferline: show open buffers as tabs
    {
        'akinsho/bufferline.nvim',
        version = "v3.*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        opts = {}
    },
    -- lualine: improved status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        opts = {}
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
}
