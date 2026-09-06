return {
    -- Mason for managing LSP binaries
    {"williamboman/mason.nvim", cmd = "Mason", opts = {}},

    {
        "williamboman/mason-lspconfig.nvim",
        opts = {ensure_installed = {"texlab"}}
    }, -- Main LSP Configuration
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            -- Define common keymaps when an LSP attaches
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspConfig",
                                                    {clear = true}),
                callback = function(ev)
                    local opts = {buffer = ev.buf, silent = true}

                    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
                    vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover)
                    vim.keymap.set("n", "<leader>c", vim.lsp.buf.incoming_calls)
                    vim.keymap.set("n", "<leader>o", vim.lsp.buf.outgoing_calls)
                    vim.keymap.set("n", "<leader>f", vim.lsp.buf.references)
                    vim.keymap.set("n", "<leader>v", vim.diagnostic.open_float)

                end
            })

            vim.lsp.config("texlab", {
                settings = {
                    texlab = {
                        -- Build settings (uses latexmk)
                        build = {
                            executable = "latexmk",
                            args = {
                                "-pdf", "-interaction=nonstopmode",
                                "-synctex=1", "-outdir=./", "-auxdir=./build",
                                "%f"
                            },
                            onSave = true,
                            forwardSearchAfter = false
                        },
                        -- Forward search configuration (zathura, skim, okular, etc.)
                        forwardSearch = {
                            executable = "zathura",
                            args = {"--synctex-forward", "%l:1:%f", "%p"}
                        },
                        -- Linting via ChkTeX
                        chktex = {onOpenAndSave = true},
                        -- Citation and label autocompletions
                        completion = {cite = {enabled = true}}
                    }
                }
            })

            -- 3. Enable the language server globally
            vim.lsp.enable("texlab")
        end
    }
}

