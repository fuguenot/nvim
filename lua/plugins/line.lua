local lualine = {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            section_separators = { left = '\u{e0bc}', right = '\u{e0ba}' },
            component_separators = { left = '\u{e0bd}', right = '\u{e0bb}' },
        }
    }
}

local tabby = {
    'nanozuki/tabby.nvim',
    dependencies = { 'nvimtree/nvim-web-devicons' },
    opts = {}
}

return { lualine, tabby }
