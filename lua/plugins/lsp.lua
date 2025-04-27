local lspconfig = {
    'neovim/nvim-lspconfig',
    lazy = false,
    dependencies = {
        { 'ms-jpq/coq_nvim', branch = 'coq', build = ':COQdeps' },
        { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
        { 'ms-jpq/coq.thirdparty', branch = '3p' },
    },
    init = function()
        vim.g.coq_settings = {
            auto_start = 'shut-up',
        }
    end,
    config = function()
        vim.lsp.enable('lua_ls')
        vim.lsp.enable('vimls')
        vim.lsp.enable('clangd')
        vim.lsp.enable('cmake')
        vim.lsp.enable('pylsp')
        vim.lsp.enable('rust_analyzer')
    end,
}

return { lspconfig }
