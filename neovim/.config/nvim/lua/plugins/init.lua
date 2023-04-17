-- NOTE: `opts = {}` is the same as calling `require('X').setup({})`
--
return {
    -- git
    'tpope/vim-fugitive',
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
    'mbbill/undotree',
    require 'plugins.lspconfig',
    require 'plugins.autocomplete',
    -- displays a popup with possible key bindings of the command you started typing
    { 'folke/which-key.nvim', opts = {} },
    require 'plugins.colorscheme',
    require 'plugins.lualine',
    require 'plugins.telescope',
    require 'plugins.telescope-fzf-native',
    require 'plugins.treesitter',
    require 'plugins.neo-tree',
}
