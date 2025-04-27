local telescope = {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'polirritmico/telescope-lazy-plugins.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    cmd = 'Telescope',
    keys = {
        { '<leader>tf', '<cmd>Telescope find_files<cr>', desc = 'Telescope find files' },
        { '<leader>tt', '<cmd>Telescope buffers<cr>', desc = 'Telescope buffers' },
        { '<leader>tg', '<cmd>Telescope live_grep<cr>', desc = 'Telescope live grep' },
        { '<leader>tm', '<cmd>Telescope marks<cr>', desc = 'Telescope marks' },
        { '<leader>tx', '<cmd>Telescope diagnostics<cr>', desc = 'Telescope diagnostics' },
        { '<leader>tT', '<cmd>Telescope builtin<cr>', desc = 'Telescope other builtin' },
    },
    config = function()
        local tel = require('telescope')
        tel.load_extension('fzf')
        tel.load_extension('lazy_plugins')
    end,
}

return { telescope }
