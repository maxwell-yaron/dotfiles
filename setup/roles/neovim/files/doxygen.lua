local config = function()
  vim.g.DoxygenToolkit_compactDoc = "yes"
  vim.g.DoxygenToolkit_paramTag_pre = "@param[in] "
  vim.keymap.set('n', '<C-k>', '<Cmd>Dox<CR><Esc>', { desc = "Auto doxygen" })
end

return {
  "vim-scripts/DoxygenToolkit.vim",
  config = config,
}
