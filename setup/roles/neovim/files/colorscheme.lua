local config = function()
  vim.cmd.colorscheme('sonokai')
end

return {
  { 
    "sainnhe/sonokai",
    name = "sonokai", 
    tag="v0.3.3",
    lazy = false,
    priority = 1000,
    config = config,
  },
}
