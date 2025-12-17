-- Go environment variables are set in config/go_env.lua (loaded early in init.lua)
-- This ensures gopls and Go tools inherit them when they start

return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        gopls = {
          -- gopls will inherit environment variables from vim.env
        },
      },
    },
  },
  -- Disable golangci-lint from conform/nvim-lint if it's causing issues
  -- It won't respect the environment variables properly
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        go = { "goimports", "gofumpt" }, -- Use goimports and gofumpt, skip golangci-lint
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        go = {}, -- Disable golangci-lint, rely on gopls for diagnostics
      },
    },
  },
}
