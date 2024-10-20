local config = function()
  local git = require("gitsigns")
  git.setup({
    signcolumn = false,
  })
  vim.keymap.set('n','<leader>gb',git.blame,{ desc = 'Git Blame' })
end

return {
  "lewis6991/gitsigns.nvim",
  config = config,
}
