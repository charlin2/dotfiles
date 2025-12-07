return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--completion-style=detailed",
            "--header-insertion=never",
          },
          -- Uncomment for better decoding of templated types:
          -- capabilities = { offsetEncoding = "utf-16" },
        },
      },
    },
  },
}
