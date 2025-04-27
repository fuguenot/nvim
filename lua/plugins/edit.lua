local surround = {
    'kylechui/nvim-surround',
    version = '^3.0.0',
}

local comment = {
    'numToStr/Comment.nvim',
    opts = {},
}

local neoformat = {
    'sbdchd/neoformat',
    cmd = 'Neoformat',
    keys = {
        { '<leader>f', '<cmd>Neoformat<cr>', desc = 'Format buffer' },
    },
}

local autopairs = {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
}

return { surround, comment, neoformat, autopairs }
