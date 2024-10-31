require("nvim-tree").setup() -- empty setup using defaults
vim.keymap.set('n', '<leader>n', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<leader>tf', ':NvimTreeToggle<CR>')
