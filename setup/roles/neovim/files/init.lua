require("config.lazy")

vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 4
vim.opt.hlsearch = true
vim.opt.cindent = true
vim.opt.errorbells = false
vim.opt.swapfile = false
vim.opt.showmode = true
vim.opt.showcmd = true

-- Spellcheck for certain file types.
vim.api.nvim_create_autocmd({"BufEnter","BufWinEnter"}, {
  pattern = {"*.md",".txt"},
  command = "setlocal spell spelllang=en_us",
})

-- SETUP KEYMAPS
-- auto format
vim.keymap.set('n', '<leader>fmt', vim.lsp.buf.format, { desc = "Auto format code" })            
-- symbol rename
vim.keymap.set('n', '<leader>rp', vim.lsp.buf.rename, { desc = "Replace symbols" })              
-- Hover documentation
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover documentation" })
-- Go to definition
vim.keymap.set('n', '<leader>gD', vim.lsp.buf.definition, { desc = "Goto definition" })
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.declaration, { desc = "Goto declaration" })
