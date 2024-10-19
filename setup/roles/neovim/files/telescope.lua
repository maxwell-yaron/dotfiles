local config = function()
  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
  vim.keymap.set('n', '<leader>gr', builtin.grep_string, { desc = 'Telescope grep' })
end

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    config = config,
    dependencies = { 'nvim-lua/plenary.nvim' }
}
