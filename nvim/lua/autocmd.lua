-- Autocommand alias
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd('BufWritePre', {pattern = '', command = ':%s/\\s\\+$//e'})

augroup("AutoFormat", {})

-- lua
autocmd('BufWritePost', {
    pattern = "*.lua",
    group = "AutoFormat",
    callback = function()
        vim.cmd("silent !lua-format -i %")
        vim.cmd("edit")
    end
})

-- python
autocmd('BufWritePost', {
    pattern = "*.py",
    group = "AutoFormat",
    callback = function()
        vim.cmd("silent !black --quiet %")
        vim.cmd("edit")
    end
})

