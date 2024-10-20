local config = function()
  local conf = require('nvim-treesitter.configs')
  conf.setup({
      ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "cuda",
        "glsl",
        "go",
        "html",
        "java",
        "javascript",
        "json",
        "lua",
        "make",
        "markdown",
        "python",
        "rust",
        "starlark",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
    },
    auto_install = false,
    highlight = { enable = true },
  })
end

return {
  "nvim-treesitter/nvim-treesitter",  -- Incremental parsing engine
  dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",  -- Syntax-aware text objects
  },
  tag = "v0.9.2",
  build = ":TSUpdate",
  config = config,
}
