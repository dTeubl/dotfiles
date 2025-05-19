return {
    -- lspconfig
    "neovim/nvim-lspconfig",
    config = function()

        require("lspconfig").pyright.setup {capabilities = capabilities}

    end
}
