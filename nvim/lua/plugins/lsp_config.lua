return {
    -- lspconfig
    "neovim/nvim-lspconfig",
    config = function()

        require("lspconfig").pyright.setup {capabilities = capabilities}

        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
    end
}
