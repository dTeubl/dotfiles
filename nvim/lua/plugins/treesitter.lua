return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    opts = {
        higlight = {enable = true},
        indent = {enable = true},
        ensure_installed = {
            "bash", "c", "c++", "pyhton", "lua", "vim", "vimdoc"
        }

    }
}
