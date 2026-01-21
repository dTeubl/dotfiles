return {
    -- slime (REPL integration)
    -- requres xdotool. 'pacman -S xdotool'
    {
        "jpalardy/vim-slime",
        lazy = false,
        keys = {
            {"<leader>rC", "<cmd>SlimeConfig<cr>", desc = "Slime Config"},
            {
                "<leader>rr",
                "<Plug>SlimeSendCell<BAR>/^# %%<CR>",
                desc = "Slime Send Cell"
            }, {
                "<leader>rr",
                ":<C-u>'<,'>SlimeSend<CR>",
                mode = "v",
                desc = "Slime Send Selection"
            }
        },
        config = function()
            vim.g.slime_target = "tmux"
            vim.g.slime_cell_delimiter = "# %%"
            vim.g.slime_bracketed_paste = 1
            vim.g.slime_python_ipython = 1
            vim.g.slime_dont_ask_default = 1
        end
    }
}
