local vim = vim

vim.filetype = on
vim.syntax = on

vim.api.nvim_set_hl(0, 'LineNr', {fg = 'white', bold = false})

-- vim.api.nvim_set_hl(0, 'CursorLineNr', {fg = 'white', bold = true})

require("config.common")
require("config.maps")
require("config.autocmd")

-- other setup and self plugins

require("config.lazy")

-- vim.opt.termguicolors = true
require("bufferline").setup()
require("undotree").setup()
-- require("vim_slime").setup()

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
-- vim.lsp.enable("pylsp")
--vim.lsp.enable("python3 -m pyright")
vim.lsp.enable("pyright")
