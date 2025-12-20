return {
  {
    "Mofiqul/vscode.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    config = function()
      require("vscode").setup({
        -- optional configuration
        transparent = false,
        italic_comments = true,
      })

      -- Load the colorscheme
      vim.cmd([[colorscheme vscode]])
    end,
  },
}
