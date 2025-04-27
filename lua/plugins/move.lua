local hml = {
    'mawkler/hml.nvim',
    opts = {}
}

local whichkey = {
    'folke/which-key.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy',
    opts = {},
    keys = {
        {
            '<leader>?',
            function() require('which-key').show({ global = false }) end,
            desc = 'Buffer Local Keymaps (which-key)'
        }
    }
}

local leap = {
    'ggandor/leap.nvim',
    dependencies = { 'tpope/vim-repeat' },
    config = function()
        require('leap').set_default_mappings()
    end
}

return { hml, whichkey, leap }
