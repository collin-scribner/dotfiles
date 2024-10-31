-- Automatically source and re-compile packer whenever you save this init.lua
require('core.packer')
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand '$MYVIMRC',
})

if vim.g.vscode then
  -- vscode nvim config
  require('core.options')
  require('core.keymap')
else
  -- terminal nvim config
  require('core.options')
  require('core.keymap')
  require('core.plugin_config')
  require('core.lsp')
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
