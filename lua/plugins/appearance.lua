local edge = {
    'sainnhe/edge',
    lazy = false,
    priority = 1000,
    init = function()
        vim.g.edge_enable_italic = true
        vim.g.edge_style = 'aura'
        vim.g.edge_dim_foreground = true
        vim.cmd.colorscheme('edge')
    end
}

local ibl = {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {},
}

return { edge, ibl }
