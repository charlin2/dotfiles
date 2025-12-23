-- Set Go environment variables before anything else
require("config.go_env")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Set cpp standard
require('lspconfig').clangd.setup {
  init_options = {
    fallbackFlags = {'--std=c++20'}
  },
}
