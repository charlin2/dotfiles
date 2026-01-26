return {
  "rockyzhang24/arctic.nvim",
  dependencies = { "rktjmp/lush.nvim" },
  name = "arctic",
  branch = "main",
  enabled = true,
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme arctic")
  end
}
