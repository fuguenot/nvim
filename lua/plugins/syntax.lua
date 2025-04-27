local treesitter = {
    'nvim-treesitter/nvim-treesitter',
    build = function() require('nvim-treesitter.install').update({ with_sync = true })() end,
    main = 'nvim-treesitter.configs',
    opts = {
        ensure_installed = { 'c', 'cpp', 'json', 'lua', 'python', 'rust', 'vim', 'vimdoc' },
        sync_install = true,
        highlight = { enable = true },
        indent = { enable = true }
    }
}

return { treesitter }
