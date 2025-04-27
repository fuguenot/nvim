-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
            { out, 'WarningMsg' },
            { '\nPress any key to exit...' },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- set mapleader and maplocalleader before loading lazy.nvim
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.o.breakindent = true
vim.o.cmdheight = 3
vim.opt.colorcolumn = { '+1' }
vim.o.confirm = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.showmode = false
vim.o.softtabstop = 4
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.textwidth = 120

-- setup lazy.nvim
require('lazy').setup({
    spec = {
        -- import plugins
        { import = 'plugins' },
    },
    checker = { enabled = true },
})
