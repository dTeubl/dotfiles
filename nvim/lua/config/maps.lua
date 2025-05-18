function Map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then options = vim.tbl_extend("force", options, opts) end
    vim.keymap.set(mode, lhs, rhs, options)
end

Map("n", "<ENTER>", ":wa<ENTER>")
Map("n", "<TAB>", ":bn<ESC>")
Map("n", "<S-TAB>", ":bp<ESC>")

Map("n", "<F2>", ":noh<CR>")
Map("n", "<F10>", ":bdelete<CR>")

Map("n", "L", "$")
Map("v", "L", "$")
Map("n", "H", "0")
Map("v", "H", "0")

Map("n", "-", "ddp")
Map("n", "_", "dd2kp")

Map("n", "<A-ENTER>", ":SlimeSend<CR>")
