require("config.lazy")

vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 4
vim.opt.hlsearch = true
vim.opt.cindent = true
vim.cmd("colorscheme moonfly")

-- Spellcheck for certain file types.
vim.api.nvim_create_autocmd({"BufEnter","BufWinEnter"}, {
  pattern = {"*.md",".txt"},
  command = "setlocal spell spelllang=en_us",
})
