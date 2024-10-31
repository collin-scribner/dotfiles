-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true
-- (catppuccin)
require('catppuccin').setup({
  flavour = "mocha",
  transparent_background = true,
})
vim.cmd.colorscheme "catppuccin"

-- Setup file explorer plugin
vim.g.loaded_netrw = 1 -- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrwPlugin = 1 -- disable netrw at the very start of your init.lua (strongly advised)
vim.o.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience

-- format on save by default
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]

vim.wo.relativenumber = true
