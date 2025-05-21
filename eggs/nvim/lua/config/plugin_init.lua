-- MELANGE COLOR THEME
vim.opt.termguicolors = true
vim.cmd.colorscheme 'melange'

-- NOTIFY
require('config.plugins.notify')

-- NOICE
require('config.plugins.noice')

-- SETUP CUSTOM LSPS
require("lsps.pony_lsp")

-- CMP AUTOCOMPLETION
require('config.plugins.cmp')

-- NEOSCROLL
require('config.plugins.neoscroll')

-- LUALINE
require('lualine').setup()

-- LSP LINES
vim.diagnostic.config({ virtual_lines = true })
