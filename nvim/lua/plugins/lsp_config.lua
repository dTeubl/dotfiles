return {
    -- lspconfig
    "neovim/nvim-lspconfig",
    config = function()

        require("lspconfig").pyright.setup {capabilities = capabilities}

        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
        vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover)
        vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition)
        vim.keymap.set("n", "<leader>c", vim.lsp.buf.incoming_calls)
        vim.keymap.set("n", "<leader>o", vim.lsp.buf.outgoing_calls)
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.references)
    end
}
