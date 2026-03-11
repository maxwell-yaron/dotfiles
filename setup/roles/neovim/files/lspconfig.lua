local config = function()
  -- Diagnostic Configuration
  vim.diagnostic.config({
    virtual_text = {
      enabled = true,
      severity = nil,
    }
  })

  -- C/C++
  vim.lsp.config('clangd',
    {
    cmd = {
      'clangd',
      '--background-index',
      '--clang-tidy',
      '--header-insertion=iwyu',
      '--inlay-hints',
    },
    init_options = {
      fallbackFlags = {
        '-std=c++17',
      }
    },
    filetypes = {
      'c',
      'cpp',
      'cuda',
      'proto',
    },
  })
  vim.lsp.enable('clangd')
end

return {
  "neovim/nvim-lspconfig",
  config = config,
}
